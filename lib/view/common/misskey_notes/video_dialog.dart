import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class VideoDialog extends StatefulWidget {
  const VideoDialog({super.key, required this.url});

  final String url;

  @override
  State<VideoDialog> createState() => _VideoDialogState();
}

class _VideoDialogState extends State<VideoDialog> {
  late final player = Player();
  late final controller = VideoController(player);
  double aspectRatio = 1;
  int? listeningId;

  @override
  void initState() {
    super.initState();
    player.open(Media(widget.url));
    controller.rect.addListener(() {
      final rect = controller.rect.value;
      if (rect == null || rect.width == 0 || rect.height == 0) {
        return;
      }
      setState(() {
        aspectRatio = rect.width / rect.height;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = MaterialVideoControlsThemeData(
      seekBarPositionColor: Theme.of(context).primaryColor,
      seekBarThumbColor: Theme.of(context).primaryColor,
    );
    return AlertDialog(
      backgroundColor: Colors.transparent,
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Dismissible(
              key: const ValueKey(""),
              onDismissed: (_) => Navigator.of(context).pop(),
              direction: DismissDirection.vertical,
              child: Align(
                child: AspectRatio(
                  aspectRatio: aspectRatio,
                  child: MaterialVideoControlsTheme(
                    normal: themeData,
                    fullscreen: themeData,
                    child: Video(
                      controller: controller,
                      controls: MaterialVideoControls,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                constraints: const BoxConstraints(),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                fillColor:
                    Theme.of(context).scaffoldBackgroundColor.withAlpha(300),
                shape: const CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.close,
                    color: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.color
                        ?.withAlpha(500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
