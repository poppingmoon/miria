import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/summaly_result.dart';
import 'package:miria/providers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

final _summalyProvider =
    AsyncNotifierProvider.family<_Summaly, SummalyResult, (String, String)>(
  _Summaly.new,
);

class _Summaly extends FamilyAsyncNotifier<SummalyResult, (String, String)> {
  @override
  Future<SummalyResult> build((String, String) arg) async {
    final (host, link) = arg;
    final dio = ref.watch(dioProvider);
    final url = Uri.parse(link);
    // https://github.com/misskey-dev/misskey/blob/2023.9.3/packages/frontend/src/components/MkUrlPreview.vue#L141-L145
    final replacedUrl = url.replace(
      host: url.host == "music.youtube.com" &&
              ["watch", "channel"].contains(url.pathSegments.firstOrNull)
          ? "www.youtube.com"
          : null,
      fragment: "",
    );
    final response = await dio.getUri<Map<String, dynamic>>(
      Uri.https(
        host,
        "url",
        {"url": replacedUrl.toString(), "lang": "ja-JP"},
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
      orElse: () => LinkPreviewTile(link: link),
    );
  }
}

class LinkPreviewItem extends StatefulWidget {
  const LinkPreviewItem({
    super.key,
    required this.link,
    required this.summalyResult,
  });

  final String link;
  final SummalyResult summalyResult;

  @override
  State<LinkPreviewItem> createState() => _LinkPreviewItemState();
}

class _LinkPreviewItemState extends State<LinkPreviewItem> {
  bool isPlayerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!isPlayerOpen)
          LinkPreviewTile(
            link: widget.link,
            summalyResult: widget.summalyResult,
          ),
        if (widget.summalyResult.player.url != null &&
            WebViewPlatform.instance != null)
          if (isPlayerOpen) ...[
            PlayerItem(player: widget.summalyResult.player),
            OutlinedButton.icon(
              onPressed: () => setState(() {
                isPlayerOpen = false;
              }),
              icon: const Icon(Icons.close),
              label: const Text("プレイヤーを閉じる"),
            ),
          ] else
            OutlinedButton.icon(
              onPressed: () => setState(() {
                isPlayerOpen = true;
              }),
              icon: const Icon(Icons.play_arrow),
              label: const Text("プレイヤーを開く"),
            ),
      ],
    );
  }
}

class LinkPreviewTile extends StatelessWidget {
  const LinkPreviewTile({
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
                if (thumbnail == null)
                  SizedBox(height: imageSize)
                else
                  CachedNetworkImage(
                    imageUrl: thumbnail,
                    height: imageSize,
                    width: imageSize,
                    fit: BoxFit.cover,
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                            Expanded(
                              child: Text(
                                summalyResult.sitename ?? "",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: textTheme.labelMedium,
                              ),
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

class PlayerItem extends StatefulWidget {
  const PlayerItem({super.key, required this.player});

  final Player player;

  @override
  State<PlayerItem> createState() => _PlayerItemState();
}

class _PlayerItemState extends State<PlayerItem> {
  WebViewController? controller;

  @override
  void initState() {
    super.initState();
    final playerUrl = widget.player.url;
    if (playerUrl != null) {
      final url = Uri.tryParse(playerUrl);
      if (url != null && WebViewPlatform.instance != null) {
        // https://github.com/misskey-dev/misskey/blob/2023.9.3/packages/frontend/src/components/MkUrlPreview.vue#L18
        final replacedUrl = url.replace(
          queryParameters: {
            ...url.queryParameters,
            "autoplay": "1",
            "auto_play": "1",
          },
        );
        if (WebViewPlatform.instance is WebKitWebViewPlatform) {
          controller = WebViewController.fromPlatformCreationParams(
            WebKitWebViewControllerCreationParams(
              allowsInlineMediaPlayback: true,
              mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
            ),
          );
        } else {
          controller = WebViewController();
        }
        controller
          ?..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(Colors.transparent)
          ..setNavigationDelegate(
            NavigationDelegate(
              onNavigationRequest: (request) async {
                final url = Uri.tryParse(request.url);
                if (url != null && await canLaunchUrl(url)) {
                  launchUrl(url, mode: LaunchMode.externalApplication);
                }
                return NavigationDecision.prevent;
              },
            ),
          )
          ..loadRequest(replacedUrl);
        if (controller?.platform is AndroidWebViewController) {
          (controller!.platform as AndroidWebViewController)
              .setMediaPlaybackRequiresUserGesture(false);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = this.controller;
    if (controller == null) {
      return const SizedBox.shrink();
    }
    final width = widget.player.width;
    final height = widget.player.height;
    if (width != null && height != null) {
      final aspectRatio = width / height;
      return AspectRatio(
        aspectRatio: aspectRatio,
        child: WebViewWidget(controller: controller),
      );
    }
    return SizedBox(
      height: height?.toDouble() ?? 200,
      child: WebViewWidget(controller: controller),
    );
  }
}
