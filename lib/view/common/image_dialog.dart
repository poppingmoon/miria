
import "dart:math";

import "package:device_info_plus/device_info_plus.dart";
import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:image_gallery_saver/image_gallery_saver.dart";
import "package:miria/providers.dart";
import "package:miria/view/common/interactive_viewer.dart" as iv;
import "package:miria/view/common/misskey_notes/network_image.dart";
import "package:permission_handler/permission_handler.dart";

class ImageDialog extends ConsumerStatefulWidget {
  final List<DriveFile> driveFiles;
  final int initialPage;

  const ImageDialog({
    required this.driveFiles,
    required this.initialPage,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ImageDialogState();
}

class ImageDialogState extends ConsumerState<ImageDialog> {
  var scale = 1.0;
  late final pageController = PageController(initialPage: widget.initialPage);
  int pointersCount = 0;

  double maxScale = 8.0;
  double lastScale = 1.0;

  bool isDoubleTap = false;
  TapDownDetails? lastDoubleTapDetails;

  final TransformationController _transformationController =
      TransformationController();

  @override
  void initState() {
    super.initState();
  }

  void _resetScale() {
    _transformationController.value = Matrix4.identity();
    scale = 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: CallbackShortcuts(
          bindings: {
            const SingleActivator(LogicalKeyboardKey.arrowLeft): () {
              _resetScale();
              pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            const SingleActivator(LogicalKeyboardKey.arrowRight): () {
              _resetScale();
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
          },
          child: Dismissible(
            key: const ValueKey(""),
            behavior: HitTestBehavior.translucent,
            direction: (!isDoubleTap && scale == 1.0 && pointersCount <= 1)
                ? DismissDirection.vertical
                : DismissDirection.none,
            resizeDuration: null,
            onDismissed: (_) => {Navigator.of(context).pop()},
            child: Stack(
              children: [
                Positioned.fill(
                  child: Focus(
                    autofocus: true,
                    child: Listener(
                      onPointerDown: (event) {
                        setState(() => pointersCount++);
                      },
                      onPointerUp: (event) {
                        setState(() {
                          pointersCount--;
                          if (isDoubleTap) {
                            if (scale == 1.0) {
                              _resetScale();
                            }
                            isDoubleTap = false;
                          }
                        });
                      },
                      onPointerMove: (event) {
                        if (isDoubleTap && pointersCount == 1) {
                          final position = lastDoubleTapDetails!.localPosition;
                          final delta = event.localPosition - position;

                          scale = max(
                            min(
                              lastScale + (delta.dy / 75.0),
                              maxScale,
                            ),
                            1.0,
                          );
                          final v = _transformationController.toScene(position);

                          _transformationController.value = Matrix4.identity()
                            ..scale(scale);

                          final v2 =
                              _transformationController.toScene(position) - v;

                          _transformationController.value =
                              _transformationController.value.clone()
                                ..translate(v2.dx, v2.dy);
                        }
                      },
                      child: GestureDetector(
                        onDoubleTapDown: (details) {
                          setState(() {
                            isDoubleTap = true;
                            lastDoubleTapDetails = details;
                            lastScale = scale;
                          });
                        },
                        onDoubleTap: () {
                          if (scale != 1.0) {
                            _resetScale();
                          } else if (lastDoubleTapDetails != null) {
                            final position =
                                lastDoubleTapDetails!.localPosition;
                            _transformationController.value = Matrix4.identity()
                              ..translate(
                                -position.dx * 2,
                                -position.dy * 2,
                              )
                              ..scale(3.0);
                            scale = 3.0;
                          }
                          setState(() {
                            isDoubleTap = false;
                          });
                        },
                        child: PageView(
                          controller: pageController,
                          physics: (!isDoubleTap &&
                                  scale == 1.0 &&
                                  pointersCount <= 1)
                              ? const ScrollPhysics()
                              : const NeverScrollableScrollPhysics(),
                          children: [
                            for (final url in widget.driveFiles)
                              ScaleNotifierInteractiveViewer(
                                  imageUrl: file.url,
                                  controller: _transformationController,
                                  onScaleChanged: (scaleUpdated) =>
                                      setState(() {
                                    scale = scaleUpdated;
                                  }),
                                ),
                              )
                          ],
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
                    constraints:
                        const BoxConstraints(minWidth: 0, minHeight: 0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    fillColor: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withAlpha(200),
                    shape: const CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.close,
                        color: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.color
                            ?.withAlpha(200),
                      ),
                    ),
                  ),
                ),
                if (defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS)
                  Positioned(
                    right: 10,
                    top: 10,
                    child: RawMaterialButton(
                      onPressed: () async {
                          final page = pageController.page?.toInt();
                          if (page == null) return;
                          final driveFile = widget.driveFiles[page];
                          await ref
                              .read(downloadFileNotifierProvider.notifier)
                              .downloadFile(driveFile);
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(S.of(context).savedImage)));
                      },
                      constraints:
                          const BoxConstraints(minWidth: 0, minHeight: 0),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero,
                      fillColor: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withAlpha(200),
                      shape: const CircleBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.save,
                          color: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.color
                              ?.withAlpha(200),
                        ),
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

class ScaleNotifierInteractiveViewer extends StatefulWidget {
  final String imageUrl;
  final TransformationController controller;
  final void Function(double) onScaleChanged;
  final double maxScale;
  final bool isEnableScale;

  const ScaleNotifierInteractiveViewer({
    required this.imageUrl,
    required this.controller,
    required this.onScaleChanged,
    required this.maxScale,
    required this.isEnableScale,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => ScaleNotifierInteractiveViewerState();
}

class ScaleNotifierInteractiveViewerState
    extends State<ScaleNotifierInteractiveViewer> {
  var scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.95,
      child: iv.InteractiveViewer(
        maxScale: widget.maxScale,
        isEnableScale: widget.isEnableScale,
        // ピンチイン・ピンチアウト終了後の処理
        transformationController: widget.controller,
        onInteractionEnd: (details) {
          scale = widget.controller.value.getMaxScaleOnAxis();
          widget.onScaleChanged(scale);
        },
        child: NetworkImageView(
          url: widget.imageUrl,
          type: ImageType.image,
          loadingBuilder: (
            context,
            child,
            loadingProgress,
          ) {
            if (loadingProgress == null) return child;
            return const SizedBox(
              height: 48.0,
              width: 48.0,
              child: Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}
