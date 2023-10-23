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
}
