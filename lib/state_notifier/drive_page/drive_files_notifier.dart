import 'dart:async';
import 'dart:typed_data';

import 'package:file/file.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/pagination_state.dart';
import 'package:miria/providers.dart';
import 'package:misskey_dart/misskey_dart.dart';

class DriveFilesNotifier extends AutoDisposeFamilyNotifier<
    PaginationState<DriveFile>, (Misskey, String?)> {
  @override
  PaginationState<DriveFile> build((Misskey, String?) arg) {
    Future(loadMore);
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() {
      timer = Timer(const Duration(minutes: 1), link.close);
    });
    ref.onResume(() {
      timer?.cancel();
    });
    ref.onDispose(() {
      timer?.cancel();
    });
    return const PaginationState();
  }

  Misskey get _misskey => arg.$1;

  String? get _folderId => arg.$2;

  Future<void> loadMore() async {
    if (state.isLoading || state.isLastLoaded) {
      return;
    }
    state = state.copyWith(isLoading: true);
    final untilId = state.lastOrNull?.id;
    try {
      final response = await _misskey.drive.files.files(
        DriveFilesRequest(
          folderId: _folderId,
          untilId: untilId,
        ),
      );
      state = state.copyWith(
        items: [...state, ...response],
        isLoading: false,
        isLastLoaded: response.isEmpty,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isLastLoaded: true,
      );
      rethrow;
    }
  }

  Future<void> upload(File file) async {
    final response = await _misskey.drive.files.create(
      DriveFilesCreateRequest(
        folderId: _folderId,
        name: file.basename,
      ),
      file,
    );
    state = state.copyWith(items: [response, ...state]);
  }

  Future<void> uploadAsBinary(
    Uint8List data, {
    String? name,
    String? comment,
    bool? isSensitive,
  }) async {
    final response = await _misskey.drive.files.createAsBinary(
      DriveFilesCreateRequest(
        folderId: _folderId,
        name: name,
        comment: comment,
        isSensitive: isSensitive,
      ),
      data,
    );
    state = state.copyWith(items: [response, ...state]);
  }

  Future<void> delete(String fileId) async {
    await _misskey.drive.files.delete(DriveFilesDeleteRequest(fileId: fileId));
    state = state.copyWith(
      items: state.where((file) => file.id != fileId).toList(),
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
    state = state.copyWith(
      items: state.map((file) => file.id == fileId ? response : file).toList(),
    );
  }

  Future<void> move({
    required String fileId,
    required String? folderId,
  }) async {
    if (folderId == _folderId) {
      return;
    }
    // folderIdがnullのときキーが削除されるのを回避
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      "drive/files/update",
      {
        "fileId": fileId,
        "folderId": folderId,
      },
      excludeRemoveNullPredicate: (key, _) => key == "folderId",
    );
    final file = DriveFile.fromJson(response);
    state = state.copyWith(
      items: state.where((file) => file.id != fileId).toList(),
    );
    ref
        .read(driveFilesNotifierProvider((_misskey, folderId)).notifier)
        .add(file);
  }

  void add(DriveFile file) {
    state = state.copyWith(items: [file, ...state]);
  }
}
