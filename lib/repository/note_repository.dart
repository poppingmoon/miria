import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miria/model/account.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'note_repository.freezed.dart';

@freezed
class NoteStatus with _$NoteStatus {
  const factory NoteStatus({
    required bool isCwOpened,
    required bool isLongVisible,
    required bool isReactionedRenote,
    required bool isLongVisibleInitialized,
    required bool isIncludeMuteWord,
    required bool isMuteOpened,
  }) = _NoteStatus;
}

class NoteRepository extends ChangeNotifier {
  final Misskey misskey;
  final Account account;
  final Map<String, Note> _notes = {};
  final Map<String, NoteStatus> _noteStatuses = {};

  final List<List<String>> muteWordContents = [];
  final List<RegExp> muteWordRegExps = [];

  NoteRepository(this.misskey, this.account) {
    updateMute(account.i.mutedWords);
  }

  void updateMute(List<MuteWord> mutedWords) {
    for (final muteWord in mutedWords) {
      final content = muteWord.content;
      final regExp = muteWord.regExp;
      if (content != null) {
        muteWordContents.add(content);
      }
      if (regExp != null) {
        try {
          muteWordRegExps.add(RegExp(regExp.substring(1, regExp.length - 1)));
        } catch (_) {}
      }
    }
  }

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
    _noteStatuses[note.id] ??= NoteStatus(
      isCwOpened: false,
      isLongVisible: false,
      isReactionedRenote: false,
      isLongVisibleInitialized: false,
      isIncludeMuteWord: muteWordContents.any(
            (e) => e.every(
              (e2) =>
                  note.text?.contains(e2) == true ||
                  note.cw?.contains(e2) == true,
            ),
          ) ||
          muteWordRegExps.any(
            (e) =>
                note.text?.contains(e) == true || note.cw?.contains(e) == true,
          ),
      isMuteOpened: false,
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

  void addReaction(String noteId, TimelineReacted reaction) {
    final registeredNote = _notes[noteId];
    if (registeredNote == null) return;

    final isMyReaction = reaction.userId == account.i.id;
    if (isMyReaction && registeredNote.myReaction == reaction.reaction) {
      return;
    }

    final reactions = Map.of(registeredNote.reactions);
    reactions[reaction.reaction] = (reactions[reaction.reaction] ?? 0) + 1;
    final emoji = reaction.emoji;
    final reactionEmojis = Map.of(registeredNote.reactionEmojis);
    if (emoji != null && !reaction.reaction.endsWith("@.:")) {
      reactionEmojis[emoji.name] = emoji.url;
    }

    registerNote(
      registeredNote.copyWith(
        reactions: reactions,
        reactionEmojis: reactionEmojis,
        myReaction:
            isMyReaction ? reaction.reaction : registeredNote.myReaction,
      ),
    );
  }

  void addMyReaction(String noteId, String reaction) {
    addReaction(
      noteId,
      TimelineReacted(
        reaction: reaction,
        emoji: null,
        userId: account.i.id,
      ),
    );
  }

  void removeReaction(String noteId, TimelineReacted reaction) {
    final registeredNote = _notes[noteId];
    if (registeredNote == null) return;

    final isMyReaction = reaction.userId == account.i.id;
    if (isMyReaction && registeredNote.myReaction == null) {
      return;
    }

    final reactions = Map.of(registeredNote.reactions);
    final reactionCount = reactions[reaction.reaction];
    if (reactionCount == null) {
      return;
    }
    if (reactionCount <= 1) {
      reactions.remove(reaction.reaction);
    } else {
      reactions[reaction.reaction] = reactionCount - 1;
    }

    registerNote(
      registeredNote.copyWith(
        reactions: reactions,
        myReaction: isMyReaction ? "" : registeredNote.myReaction,
      ),
    );
  }

  void removeMyReaction(String noteId) {
    final myReaction = _notes[noteId]?.myReaction;
    if (myReaction == null) return;

    removeReaction(
      noteId,
      TimelineReacted(
        reaction: myReaction,
        emoji: null,
        userId: account.i.id,
      ),
    );
  }

  void addVote(String noteId, TimelineVoted vote) {
    final registeredNote = _notes[noteId];
    if (registeredNote == null) return;

    final poll = registeredNote.poll;
    if (poll == null) return;

    final isMyVote = vote.userId == account.i.id;
    if (isMyVote && poll.choices[vote.choice].isVoted) {
      return;
    }

    final choices = poll.choices.toList();
    choices[vote.choice] = choices[vote.choice].copyWith(
      votes: choices[vote.choice].votes + 1,
      isVoted: isMyVote,
    );

    registerNote(
      registeredNote.copyWith(
        poll: poll.copyWith(choices: choices),
      ),
    );
  }

  void addMyVote(String noteId, int choice) {
    addVote(noteId, TimelineVoted(choice: choice, userId: account.i.id));
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
