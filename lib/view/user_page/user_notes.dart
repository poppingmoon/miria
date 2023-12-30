import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/date_time_picker.dart';
import 'package:miria/view/common/misskey_notes/misskey_note.dart';
import 'package:miria/view/common/pushable_listview.dart';
import 'package:misskey_dart/misskey_dart.dart';

class UserNotes extends ConsumerStatefulWidget {
  final String userId;

  const UserNotes({
    super.key,
    required this.userId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => UserNotesState();
}

class UserNotesState extends ConsumerState<UserNotes> {
  Misskey get misskey => ref.read(misskeyProvider(AccountScope.of(context)));

  bool isFileOnly = false;
  bool withReply = false;
  bool renote = true;
  bool highlight = false;
  DateTime? untilDate;

  @override
  Widget build(BuildContext context) {
    final account = AccountScope.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 3),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ToggleButtons(
                      isSelected: [withReply, isFileOnly, renote, highlight],
                      onPressed: (value) {
                        setState(() {
                          switch (value) {
                            case 0:
                              withReply = !withReply;
                              if (withReply) {
                                isFileOnly = false;
                              }
                              highlight = false;
                            case 1:
                              isFileOnly = !isFileOnly;
                              if (isFileOnly) {
                                withReply = false;
                              }
                              highlight = false;
                            case 2:
                              renote = !renote;
                              highlight = false;
                            case 3:
                              withReply = false;
                              isFileOnly = false;
                              renote = false;
                              highlight = true;
                          }
                        });
                      },
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(S.of(context).includeRepliesShort),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(S.of(context).mediaOnlyShort),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(S.of(context).displayRenotesShort),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(S.of(context).highlight),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: (untilDate == null)
                      ? null
                      : (Theme.of(context).brightness == Brightness.light)
                          ? Theme.of(context).primaryColorLight
                          : Theme.of(context).primaryColorDark,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  color: (untilDate == null) ? null : Colors.white,
                  onPressed: () async {
                    final userDetailed = await ref.read(
                      userDetailedNotifierProvider((account, widget.userId))
                          .future,
                    );
                    final firstDate = userDetailed.createdAt;
                    if (!mounted) return;
                    final result = await showDateTimePicker(
                      context: context,
                      initialDate: untilDate ?? DateTime.now(),
                      firstDate: firstDate,
                      lastDate: DateTime.now(),
                      datePickerHelpText: S.of(context).showNotesBeforeThisDate,
                      timePickerHelpText: S.of(context).showNotesBeforeThisTime,
                    );
                    if (result != null) {
                      setState(() {
                        untilDate = result;
                      });
                    }
                  },
                  icon: const Icon(Icons.date_range),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: PushableListView<Note>(
            listKey: Object.hashAll(
              [isFileOnly, withReply, renote, untilDate, highlight],
            ),
            additionalErrorInfo: highlight
                ? (context, e) => Text(S.of(context).userHighlightAvailability)
                : null,
            initializeFuture: () async {
              final Iterable<Note> notes;
              if (highlight) {
                notes = await misskey.users.featuredNotes(
                  UsersFeaturedNotesRequest(userId: widget.userId),
                );
              } else {
                notes = await misskey.users.notes(
                  UsersNotesRequest(
                    userId: widget.userId,
                    withFiles: isFileOnly,
                    // 後方互換性のため
                    // ignore: deprecated_member_use
                    includeReplies: withReply,
                    // ignore: deprecated_member_use
                    includeMyRenotes: renote,
                    withReplies: withReply,
                    withRenotes: renote,
                    withChannelNotes: true,
                    untilDate: untilDate?.millisecondsSinceEpoch,
                  ),
                );
              }
              if (!mounted) return [];
              ref
                  .read(notesProvider(AccountScope.of(context)))
                  .registerAll(notes);
              return notes.toList();
            },
            nextFuture: (lastElement, _) async {
              final Iterable<Note> notes;
              if (highlight) {
                notes = await misskey.users.featuredNotes(
                  UsersFeaturedNotesRequest(
                    userId: widget.userId,
                    untilId: lastElement.id,
                  ),
                );
              } else {
                notes = await misskey.users.notes(
                  UsersNotesRequest(
                    userId: widget.userId,
                    untilId: lastElement.id,
                    withFiles: isFileOnly,
                    // ignore: deprecated_member_use
                    includeReplies: withReply,
                    // ignore: deprecated_member_use
                    includeMyRenotes: renote,
                    withReplies: withReply,
                    withRenotes: renote,
                    withChannelNotes: true,
                    untilDate: untilDate?.millisecondsSinceEpoch,
                  ),
                );
              }
              if (!mounted) return [];
              ref
                  .read(notesProvider(AccountScope.of(context)))
                  .registerAll(notes);
              return notes.toList();
            },
            itemBuilder: (context, element) {
              return MisskeyNote(note: element);
            },
          ),
        ),
      ],
    );
  }
}
