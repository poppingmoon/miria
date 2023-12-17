import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/general_settings.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/error_notification.dart';
import 'package:miria/view/common/misskey_ad.dart';

class PushableListView<T> extends ConsumerStatefulWidget {
  final Future<List<T>> Function() initializeFuture;
  final Future<List<T>> Function(T, int) nextFuture;
  final Widget Function(BuildContext, T) itemBuilder;
  final Widget Function(BuildContext, Object?)? additionalErrorInfo;
  final Object listKey;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final bool showAd;
  final bool hideIsEmpty;

  const PushableListView({
    super.key,
    required this.initializeFuture,
    required this.nextFuture,
    required this.itemBuilder,
    this.listKey = "",
    this.shrinkWrap = false,
    this.physics,
    this.additionalErrorInfo,
    this.showAd = true,
    this.hideIsEmpty = false,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      PushableListViewState<T>();
}

class PushableListViewState<T> extends ConsumerState<PushableListView<T>> {
  bool isLoading = false;
  (Object?, StackTrace)? error;
  bool isFinalPage = false;
  final scrollController = ScrollController();

  final items = <T>[];

  void initialize() {
    isLoading = true;
    Future(() async {
      try {
        final result = await widget.initializeFuture();
        items
          ..clear()
          ..addAll(result);
        if (!mounted) return;
        setState(() {
          isFinalPage = result.isEmpty;
          isLoading = false;
        });
        scrollController.animateTo(
          -scrollController.position.pixels,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeIn,
        );
      } catch (e, s) {
        if (kDebugMode) print(e);
        if (mounted) {
          setState(() {
            error = (e, s);
            isLoading = false;
          });
        }
        rethrow;
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (items.isEmpty) {
      initialize();
    }
  }

  @override
  void didUpdateWidget(covariant PushableListView<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.listKey != widget.listKey) {
      setState(() {
        items.clear();
      });
      initialize();
    }
  }

  Future<void> nextLoad() async {
    if (isLoading || items.isEmpty) return;
    Future(() async {
      try {
        if (!mounted) return;
        setState(() {
          isLoading = true;
        });
        final result = await widget.nextFuture(items.last, items.length);
        items.addAll(result);
        if (!mounted) return;
        setState(() {
          isFinalPage = result.isEmpty;
          isLoading = false;
        });
      } catch (e) {
        if (mounted) {
          setState(() {
            isLoading = false;
          });
        }
        rethrow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: widget.shrinkWrap,
      physics: widget.physics,
      itemCount: items.length + 1,
      controller: scrollController,
      itemBuilder: (context, index) {
        if (items.length == index) {
          if (isFinalPage) {
            if (items.isEmpty && !widget.hideIsEmpty) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("ありません"),
                ),
              );
            }
            return Container();
          }

          if (ref.read(
                generalSettingsRepositoryProvider
                    .select((value) => value.settings.automaticPush),
              ) ==
              AutomaticPush.automatic) {
            nextLoad();
          }

          return Column(
            children: [
              if (error != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ErrorNotification(
                      error: error?.$1,
                      stackTrace: error?.$2,
                    ),
                    widget.additionalErrorInfo?.call(context, error) ??
                        const SizedBox.shrink(),
                  ],
                ),
              Center(
                child: !isLoading
                    ? Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: IconButton(
                          onPressed: nextLoad,
                          icon: const Icon(Icons.keyboard_arrow_down),
                        ),
                      )
                    : const Padding(
                        padding: EdgeInsets.all(20),
                        child: CircularProgressIndicator(),
                      ),
              ),
            ],
          );
        }

        if (index != 0 && (index == 3 || index % 30 == 0) && widget.showAd) {
          return Column(
            children: [
              widget.itemBuilder(context, items[index]),
              const MisskeyAd(),
            ],
          );
        } else {
          return widget.itemBuilder(context, items[index]);
        }
      },
    );
  }
}
