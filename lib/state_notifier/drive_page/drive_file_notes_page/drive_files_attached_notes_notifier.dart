import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/pagination_state.dart';
import 'package:misskey_dart/misskey_dart.dart';

class DriveFilesAttachedNotesNotifier extends AutoDisposeFamilyNotifier<
    PaginationState<Note>, (Misskey, String)> {
  @override
  PaginationState<Note> build((Misskey, String) arg) {
    Future(loadMore);
    return const PaginationState();
  }

  Misskey get _misskey => arg.$1;

  String get _fileId => arg.$2;

  Future<void> loadMore() async {
    if (state.isLoading || state.isLastLoaded) {
      return;
    }
    state = state.copyWith(isLoading: true);
    final untilId = state.lastOrNull?.id;
    try {
      final response = await _misskey.drive.files.attachedNotes(
        DriveFilesAttachedNotesRequest(
          fileId: _fileId,
          untilId: untilId,
        ),
      );
      // Misskey 2023.10.0 より前はpaginationがなかったため
      if (response.any((e) => e.id == state.firstOrNull?.id)) {
        state = state.copyWith(isLastLoaded: true);
      } else {
        state = state.copyWith(
          items: [...state, ...response],
          isLastLoaded: response.isEmpty,
        );
      }
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}
