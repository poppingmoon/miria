import "dart:async";
import "dart:typed_data";

import "package:file/file.dart";
import "package:miria/model/pagination_state.dart";
import "package:miria/providers.dart";
import "package:misskey_dart/misskey_dart.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "drive_files_notifier.g.dart";

// Stack overflowを避けるため
// ignore: provider_dependencies
@Riverpod(dependencies: [misskeyPostContext])
class DriveFilesNotifier extends _$DriveFilesNotifier {
  @override
  Future<PaginationState<DriveFile>> build(String? folderId) async {
    final link = ref.keepAlive();
    Timer? timer;
    ref
      ..onCancel(() => timer = Timer(const Duration(minutes: 1), link.close))
      ..onResume(() => timer?.cancel())
      ..onDispose(() => timer?.cancel());
    try {
      final response = await _fetchFiles();
      return PaginationState.fromIterable(response);
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Misskey get _misskey => ref.read(misskeyPostContextProvider);

  Future<Iterable<DriveFile>> _fetchFiles({String? untilId}) async {
    return _misskey.drive.files.files(
      DriveFilesRequest(
        folderId: folderId,
        untilId: untilId,
      ),
    );
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
      final response = await _fetchFiles(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }

  Future<void> upload(
    File file, {
    String? name,
    String? comment,
    bool? isSensitive,
  }) async {
    final response = await _misskey.drive.files.create(
      DriveFilesCreateRequest(
        folderId: folderId,
        name: name ?? file.basename,
        comment: comment,
        isSensitive: isSensitive,
        force: true,
      ),
      file,
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [response, ...value.items]));
  }

  Future<void> uploadBinary(
    Uint8List data, {
    String? name,
    String? comment,
    bool? isSensitive,
  }) async {
    final response = await _misskey.drive.files.createAsBinary(
      DriveFilesCreateRequest(
        folderId: folderId,
        name: name,
        comment: comment,
        isSensitive: isSensitive,
      ),
      data,
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [response, ...value.items]));
  }

  Future<void> delete(String fileId) async {
    await _misskey.drive.files.delete(DriveFilesDeleteRequest(fileId: fileId));
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items.where((file) => file.id != fileId).toList(),
      ),
    );
  }

  Future<void> updateFile({
    required String fileId,
    String? name,
    bool? isSensitive,
    String? comment,
  }) async {
    final response = await _misskey.drive.files.update(
      DriveFilesUpdateRequest(
        fileId: fileId,
        name: name,
        isSensitive: isSensitive,
        comment: comment,
      ),
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .map((file) => file.id == fileId ? response : file)
            .toList(),
      ),
    );
  }

  Future<void> move({
    required String fileId,
    required String? folderId,
  }) async {
    if (folderId == this.folderId) {
      return;
    }
    // `folderId` がnullのときキーが削除されるのを回避
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      "drive/files/update",
      {
        "fileId": fileId,
        "folderId": folderId,
      },
      excludeRemoveNullPredicate: (key, _) => key == "folderId",
    );
    final file = DriveFile.fromJson(response);
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items.where((file) => file.id != fileId).toList(),
      ),
    );
    ref.read(driveFilesNotifierProvider(folderId).notifier).add(file);
  }

  void add(DriveFile file) {
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [file, ...value.items]));
  }
}
