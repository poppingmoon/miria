import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/pagination_state.dart';
import 'package:miria/providers.dart';
import 'package:misskey_dart/misskey_dart.dart';

class DriveFoldersNotifier extends AutoDisposeFamilyNotifier<
    PaginationState<DriveFolder>, (Misskey, String?)> {
  @override
  PaginationState<DriveFolder> build((Misskey, String?) arg) {
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
      final response = await _misskey.drive.folders.folders(
        DriveFoldersRequest(
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

  Future<void> create(String? name) async {
    final response = await _misskey.drive.folders.create(
      DriveFoldersCreateRequest(
        name: name,
        parentId: _folderId,
      ),
    );
    state = state.copyWith(items: [response, ...state]);
  }

  Future<void> delete(String folderId) async {
    await _misskey.drive.folders
        .delete(DriveFoldersDeleteRequest(folderId: folderId));
    state = state.copyWith(
      items: state.where((folder) => folder.id != folderId).toList(),
    );
  }

  Future<void> updateName(String folderId, String name) async {
    final response = await _misskey.drive.folders.update(
      DriveFoldersUpdateRequest(
        folderId: folderId,
        name: name,
      ),
    );
    state = state.copyWith(
      items: state
          .map((folder) => folder.id == folderId ? response : folder)
          .toList(),
    );
  }

  Future<void> move({
    required String folderId,
    required String? parentId,
  }) async {
    if (parentId == _folderId) {
      return;
    }
    // parentIdがnullのときキーが削除されるのを回避
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      "drive/folders/update",
      {
        "folderId": folderId,
        "parentId": parentId,
      },
      excludeRemoveNullPredicate: (key, _) => key == "parentId",
    );
    final folder = DriveFolder.fromJson(response);
    state = state.copyWith(
      items: state.where((file) => file.id != folderId).toList(),
    );
    ref
        .read(driveFoldersNotifierProvider((_misskey, parentId)).notifier)
        .add(folder);
  }

  void add(DriveFolder folder) {
    state = state.copyWith(items: [folder, ...state]);
  }
}
