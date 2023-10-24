import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

class BreadcrumbsNotifier extends AutoDisposeNotifier<List<DriveFolder>> {
  @override
  List<DriveFolder> build() {
    return [];
  }

  void push(DriveFolder folder) {
    state = [...state, folder];
  }

  void pop() {
    state = state.sublist(0, state.length - 1);
  }

  void popUntil(String? folderId) {
    state = state.sublist(
      0,
      state.indexWhere((folder) => folder.id == folderId) + 1,
    );
  }

  void replace(DriveFolder folder) {
    state = [...state.sublist(0, state.length - 1), folder];
  }
}
