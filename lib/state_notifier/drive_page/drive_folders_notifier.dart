import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/pagination_state.dart';
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
}
