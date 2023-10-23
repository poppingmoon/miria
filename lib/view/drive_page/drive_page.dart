import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/account.dart';
import 'package:miria/model/general_settings.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:miria/view/common/pagination_bottom_item.dart';
import 'package:miria/view/drive_page/breadcrumbs.dart';
import 'package:miria/view/drive_page/drive_file_grid_item.dart';
import 'package:miria/view/drive_page/drive_folder_grid_item.dart';
import 'package:miria/view/drive_page/drive_folder_modal_sheet.dart';

@RoutePage()
class DrivePage extends ConsumerWidget {
  const DrivePage({super.key, required this.account});

  final Account account;

  static const itemMaxCrossAxisExtent = 400.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final misskey = ref.watch(misskeyProvider(account));
    final last = ref.watch(
      breadcrumbsNotifierProvider
          .select((breadcrumbs) => breadcrumbs.lastOrNull),
    );
    final folderId = last?.id;
    final arg = (misskey, folderId);
    final currentFolder = ref.watch(
          driveFoldersNotifierProvider((misskey, last?.parentId)).select(
            (folders) =>
                folders.firstWhereOrNull((folder) => folder.id == folderId),
          ),
        ) ??
        last;
    final folders = ref.watch(
      driveFoldersNotifierProvider(arg),
    );
    final files = ref.watch(driveFilesNotifierProvider(arg));
    final loadAutomatically = ref.watch(
      generalSettingsRepositoryProvider.select(
        (repository) =>
            repository.settings.automaticPush == AutomaticPush.automatic,
      ),
    );

    return WillPopScope(
      onWillPop: () async {
        if (currentFolder != null) {
          ref.read(breadcrumbsNotifierProvider.notifier).pop();
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ドライブ"),
          actions: [
            if (currentFolder != null)
              IconButton(
                onPressed: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => DriveFolderModalSheet(
                      account: account,
                      folder: currentFolder,
                    ),
                  );
                  final siblings = ref.read(
                    driveFoldersNotifierProvider(
                      (misskey, currentFolder.parentId),
                    ),
                  );
                  final updated = siblings.firstWhereOrNull(
                    (folder) => folder.id == currentFolder.id,
                  );
                  if (updated == null) {
                    // フォルダが削除されたらpopする
                    ref.read(breadcrumbsNotifierProvider.notifier).pop();
                  } else if (updated != currentFolder) {
                    // フォルダが更新されたらreplaceする
                    ref
                        .read(breadcrumbsNotifierProvider.notifier)
                        .replace(updated);
                  }
                },
                icon: const Icon(Icons.more_vert),
              ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(driveFoldersNotifierProvider(arg));
            ref.invalidate(driveFilesNotifierProvider(arg));
          },
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Breadcrumbs(account: account),
                automaticallyImplyLeading: false,
                centerTitle: false,
                pinned: true,
                primary: false,
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                sliver: SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: itemMaxCrossAxisExtent,
                    mainAxisExtent: 100,
                  ),
                  itemCount: folders.length,
                  itemBuilder: (context, index) {
                    if (index == folders.length - 1 &&
                        loadAutomatically &&
                        !folders.isLoading &&
                        !folders.isLastLoaded) {
                      Future(() {
                        ref
                            .read(driveFoldersNotifierProvider(arg).notifier)
                            .loadMore()
                            .expectFailure(context);
                      });
                    }
                    return DriveFolderGridItem(
                      account: account,
                      folder: folders[index],
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: PaginationBottomItem(
                    paginationState: folders,
                    child: !loadAutomatically
                        ? IconButton(
                            onPressed: ref
                                .read(
                                  driveFoldersNotifierProvider(arg).notifier,
                                )
                                .loadMore
                                .expectFailure(context),
                            icon: const Icon(Icons.keyboard_arrow_down),
                          )
                        : null,
                  ),
                ),
              ),
              if (folders.isNotEmpty)
                const SliverToBoxAdapter(child: Divider()),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                sliver: SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: itemMaxCrossAxisExtent,
                  ),
                  itemCount: files.length,
                  itemBuilder: (context, index) {
                    if (index == files.length - 1 &&
                        loadAutomatically &&
                        !files.isLoading &&
                        !files.isLastLoaded) {
                      Future(() {
                        ref
                            .read(driveFilesNotifierProvider(arg).notifier)
                            .loadMore()
                            .expectFailure(context);
                      });
                    }
                    return DriveFileGridItem(
                      account: account,
                      file: files[index],
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: PaginationBottomItem(
                      paginationState: files,
                      noItemLabel: const Text("ファイルがありません"),
                      child: !loadAutomatically
                          ? IconButton(
                              onPressed: ref
                                  .read(
                                    driveFilesNotifierProvider(arg).notifier,
                                  )
                                  .loadMore
                                  .expectFailure(context),
                              icon: const Icon(Icons.keyboard_arrow_down),
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
