import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'note_repository.freezed.dart';

@freezed
class NoteStatus with _$NoteStatus {
  const factory NoteStatus({
    required bool isCwOpened,
    required bool isLongVisible,
    required bool isReactionedRenote,
    required bool isLongVisibleInitialized,
  }) = _NoteStatus;
}

class NoteRepository extends ChangeNotifier {
  final Misskey misskey;
  final Map<String, Note> _notes = {};
  final Map<String, NoteStatus> _noteStatuses = {};

  NoteRepository(this.misskey);

  Map<String, Note> get notes => _notes;

  Map<String, NoteStatus> get noteStatuses => _noteStatuses;

  void updateNoteStatus(
    String id,
    NoteStatus Function(NoteStatus status) statusPredicate, {
    bool isNotify = true,
  }) {
    _noteStatuses[id] = statusPredicate.call(_noteStatuses[id]!);
    if (isNotify) notifyListeners();
  }

  void _registerNote(Note note) {
    final registeredNote = _notes[note.id];
    _notes[note.id] = note.copyWith(
      renote: note.renote ?? _notes[note.renoteId],
      reply: note.reply ?? _notes[note.replyId],
      poll: note.poll ?? registeredNote?.poll,
      myReaction: note.myReaction?.isEmpty == true
          ? null
          : (note.myReaction ??
              (note.reactions.isNotEmpty ? registeredNote?.myReaction : null)),
    );
    _noteStatuses[note.id] ??= const NoteStatus(
      isCwOpened: false,
      isLongVisible: false,
      isReactionedRenote: false,
      isLongVisibleInitialized: false,
    );
    final renote = note.renote;
    final reply = note.reply;
    if (renote != null) {
      _registerNote(renote);
    }
    if (reply != null) {
      _registerNote(reply);
    }
  }

  void registerNote(Note note) {
    _registerNote(note);
    Future(() {
      notifyListeners();
    });
  }

  void registerAll(Iterable<Note> notes) {
    for (final element in notes) {
      _registerNote(element);
    }
    Future(() {
      notifyListeners();
    });
  }

  void addVote(String noteId, TimelineVoted vote) {
    final registeredNote = _notes[noteId];
    if (registeredNote == null) return;

    final poll = registeredNote.poll;
    if (poll == null) return;

    final choices = poll.choices.toList();
    choices[vote.choice] = choices[vote.choice].copyWith(
      votes: choices[vote.choice].votes + 1,
    );

    registerNote(
      registeredNote.copyWith(
        poll: poll.copyWith(choices: choices),
      ),
    );
  }

  void updateNote(String noteId, NoteEdited note) {
    final registeredNote = _notes[noteId];
    if (registeredNote == null) return;

    registerNote(
      registeredNote.copyWith(
        text: note.text,
        cw: note.cw,
        updatedAt: DateTime.now(),
      ),
    );
  }

  Future<void> refresh(String noteId) async {
    final note = await misskey.notes.show(NotesShowRequest(noteId: noteId));
    registerNote(note.copyWith(myReaction: note.myReaction ?? ""));
  }

  void delete(String noteId) {
    _notes.remove(noteId);
    Future(() {
      notifyListeners();
    });
  }
}
