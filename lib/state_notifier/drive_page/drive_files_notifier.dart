import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/pagination_state.dart';
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
}
