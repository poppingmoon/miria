import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/summaly_result.dart';
import 'package:miria/providers.dart';
import 'package:url_launcher/url_launcher.dart';

final _summalyProvider =
    AsyncNotifierProvider.family<_Summaly, SummalyResult, (String, String)>(
  _Summaly.new,
);

class _Summaly extends FamilyAsyncNotifier<SummalyResult, (String, String)> {
  @override
  Future<SummalyResult> build((String, String) arg) async {
    final (host, link) = arg;
    final dio = ref.watch(dioProvider);
    final response = await dio.getUri<Map<String, dynamic>>(
      Uri.https(
        host,
        "url",
        {"url": link, "lang": "ja-JP"},
      ),
    );
    return SummalyResult.fromJson(response.data!);
  }
}

class LinkPreview extends ConsumerWidget {
  const LinkPreview({
    super.key,
    required this.account,
    required this.link,
  });

  final Account account;
  final String link;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summalyResult = ref.watch(_summalyProvider((account.host, link)));
    return summalyResult.maybeWhen(
      data: (summalyResult) => LinkPreviewItem(
        link: link,
        summalyResult: summalyResult,
      ),
      orElse: () => LinkPreviewItem(link: link),
    );
  }
}

class LinkPreviewItem extends StatelessWidget {
  const LinkPreviewItem({
    super.key,
    required this.link,
    this.summalyResult = const SummalyResult(player: Player()),
  });

  final String link;
  final SummalyResult summalyResult;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final imageSize = (textTheme.titleSmall?.fontSize ?? 15) * 5;
    final thumbnail = summalyResult.thumbnail;
    final icon = summalyResult.icon;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () async {
          final url = Uri.parse(link);
          if (await canLaunchUrl(url)) {
            launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
        onLongPress: () {
          Clipboard.setData(ClipboardData(text: link));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("コピーしました")),
          );
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).dividerColor,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Row(
              children: [
                if (thumbnail != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CachedNetworkImage(
                      imageUrl: thumbnail,
                      height: imageSize,
                      width: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          summalyResult.title ?? link,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.titleSmall,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          summalyResult.description ?? "",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: textTheme.bodySmall,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            if (icon != null)
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: CachedNetworkImage(
                                  imageUrl: icon,
                                  height: textTheme.labelMedium?.fontSize,
                                  width: textTheme.labelMedium?.fontSize,
                                ),
                              ),
                            Text(
                              summalyResult.sitename ?? "",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
