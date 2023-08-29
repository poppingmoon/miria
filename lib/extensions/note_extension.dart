import 'package:misskey_dart/misskey_dart.dart';

extension NoteExtension on Note {
  bool get isEmptyRenote {
    return renoteId != null && text == null && files.isEmpty && poll == null;
  }
}
