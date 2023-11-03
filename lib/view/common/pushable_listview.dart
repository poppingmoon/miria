import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:miria/model/general_settings.dart';
import 'package:miria/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/view/common/error_notification.dart';

class PushableListView<T> extends ConsumerStatefulWidget {
  final Future<List<T>> Function() initializeFuture;
  final Future<List<T>> Function(T, int) nextFuture;
  final Widget Function(BuildContext, T) itemBuilder;
  final Widget Function(BuildContext, Object?)? additionalErrorInfo;
  final Object listKey;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  const PushableListView({
    super.key,
    required this.initializeFuture,
    required this.nextFuture,
    required this.itemBuilder,
    this.listKey = "",
    this.shrinkWrap = false,
    this.physics,
    this.additionalErrorInfo,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      PushableListViewState<T>();
}

class PushableListViewState<T> extends ConsumerState<PushableListView<T>> {
  var isLoading = false;
  (Object?, StackTrace)? error;
  var isFinalPage = false;
  final scrollController = ScrollController();

  final items = <T>[];

  void initialize() {
    isLoading = true;
    Future(() async {
      try {
        items
          ..clear()
          ..addAll(await widget.initializeFuture());
        setState(() {
          isLoading = false;
        });
        scrollController.animateTo(-scrollController.position.pixels,
            duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
      } catch (e, s) {
        if (kDebugMode) print(e);
        setState(() {
          error = (e, s);
          isLoading = false;
        });
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
        setState(() {
          isLoading = true;
        });
        final result = await widget.nextFuture(items.last, items.length);
        if (result.isEmpty) isFinalPage = true;
        items.addAll(result);
        setState(() {
          isLoading = false;
        });
      } catch (e) {
        setState(() {
          isLoading = false;
        });
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
            return Container();
          }

          if (ref.read(generalSettingsRepositoryProvider
                  .select((value) => value.settings.automaticPush)) ==
              AutomaticPush.automatic) {
            nextLoad();
          }

          return Column(
            children: [
              if (error != null)
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ErrorNotification(
                      error: error?.$1,
                      stackTrace: error?.$2,
                    ),
                    widget.additionalErrorInfo?.call(context, error) ??
                        const SizedBox.shrink()
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
                        child: CircularProgressIndicator()),
              )
            ],
          );
        }
        return widget.itemBuilder(context, items[index]);
      },
    );
  }
}
