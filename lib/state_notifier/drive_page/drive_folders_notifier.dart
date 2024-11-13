import "dart:async";

import "package:miria/model/pagination_state.dart";
import "package:miria/providers.dart";
import "package:misskey_dart/misskey_dart.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "drive_folders_notifier.g.dart";

@Riverpod(dependencies: [misskeyPostContext])
class DriveFoldersNotifier extends _$DriveFoldersNotifier {
  @override
  Future<PaginationState<DriveFolder>> build(String? folderId) async {
    final link = ref.keepAlive();
    Timer? timer;
    ref
      ..onCancel(() => timer = Timer(const Duration(minutes: 1), link.close))
      ..onResume(() => timer?.cancel())
      ..onDispose(() => timer?.cancel());
    try {
      final response = await _fetchFolders();
      return PaginationState.fromIterable(response);
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Misskey get _misskey => ref.read(misskeyPostContextProvider);

  Future<List<DriveFolder>> _fetchFolders({String? untilId}) async {
    final response = await _misskey.drive.folders.folders(
      DriveFoldersRequest(
        folderId: folderId,
        untilId: untilId,
      ),
    );
    return response.toList();
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchFolders(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }

  Future<void> delete(String folderId) async {
    await _misskey.drive.folders
        .delete(DriveFoldersDeleteRequest(folderId: folderId));
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items.where((folder) => folder.id != folderId).toList(),
      ),
    );
  }

  Future<void> updateName(String folderId, String name) async {
    final response = await _misskey.drive.folders.update(
      DriveFoldersUpdateRequest(
        folderId: folderId,
        name: name,
      ),
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .map((folder) => folder.id == folderId ? response : folder)
            .toList(),
      ),
    );
  }
}
