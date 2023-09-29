import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkPreview extends StatelessWidget {
  const LinkPreview({super.key, required this.link});

  final String link;

  Widget _buildItem(
    BuildContext context,
    Metadata metadata,
    ImageProvider<Object>? image,
  ) {
    final title = metadata.title?.trim();
    return Padding(
      padding: const EdgeInsets.all(5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          leading: image == null
              ? null
              : Image(
                  image: image,
                  width: 50,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                ),
          title: Text(
            (title != null && title.isNotEmpty) ? title : link,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          subtitle: Text(
            metadata.desc ?? "",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          isThreeLine: true,
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
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnyLinkPreview.builder(
      link: link,
      itemBuilder: _buildItem,
      placeholderWidget: _buildItem(context, Metadata(), null),
      errorWidget: _buildItem(context, Metadata(), null),
    );
  }
}
