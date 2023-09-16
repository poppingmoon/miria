import 'package:flutter/material.dart';
import 'package:miria/model/account.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/date_time_picker.dart';
import 'package:miria/view/common/misskey_notes/misskey_note.dart';
import 'package:miria/view/common/pushable_listview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/view/user_page/user_page.dart';
import 'package:misskey_dart/misskey_dart.dart';

class UserNotes extends ConsumerStatefulWidget {
  final String userId;
  final String? remoteUserId;
  final Account? actualAccount;

  const UserNotes({
    super.key,
    required this.userId,
    this.remoteUserId,
    this.actualAccount,
  }) : assert((remoteUserId == null) == (actualAccount == null));

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => UserNotesState();
}

class UserNotesState extends ConsumerState<UserNotes> {
  Misskey get misskey => ref.read(misskeyProvider(AccountScope.of(context)));

  bool isFileOnly = false;
  bool withReply = false;
  bool renote = true;
  DateTime? untilDate;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 3),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: ToggleButtons(
                    isSelected: [
                      withReply,
                      isFileOnly,
                      renote,
                    ],
                    onPressed: (value) {
                      setState(() {
                        switch (value) {
                          case 0:
                            withReply = !withReply;
                          case 1:
                            isFileOnly = !isFileOnly;
                          case 2:
                            renote = !renote;
                        }
                      });
                    },
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("返信つき"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("ファイルつき"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("リノートも"),
                      ),
                    ],
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
                  onPressed: () async {
                    final userInfo = ref.read(userInfoProvider(widget.userId));
                    final firstDate = widget.actualAccount == null
                        ? userInfo?.response?.createdAt
                        : userInfo?.remoteResponse?.createdAt;

                    final result = await showDateTimePicker(
                      context: context,
                      initialDate: untilDate ?? DateTime.now(),
                      firstDate: firstDate ?? DateTime.now(),
                      lastDate: DateTime.now(),
                      datePickerHelpText: "この日までを表示",
                      timePickerHelpText: "この時間までを表示",
                    );
                    if (result != null) {
                      untilDate = result;
                    }
                    setState(() {});
                  },
                  icon: const Icon(Icons.date_range),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: PushableListView<Note>(
            listKey: Object.hashAll([isFileOnly, withReply, renote, untilDate]),
            initializeFuture: () async {
              final notes = await misskey.users.notes(
                UsersNotesRequest(
                  userId: widget.remoteUserId ?? widget.userId,
                  withFiles: isFileOnly,
                  includeReplies: withReply,
                  includeMyRenotes: renote,
                  untilDate: untilDate?.millisecondsSinceEpoch,
                ),
              );
              if (!mounted) return [];
              ref
                  .read(notesProvider(AccountScope.of(context)))
                  .registerAll(notes);
              return notes.toList();
            },
            nextFuture: (lastElement, _) async {
              final notes = await misskey.users.notes(
                UsersNotesRequest(
                  userId: widget.remoteUserId ?? widget.userId,
                  untilId: lastElement.id,
                  withFiles: isFileOnly,
                  includeReplies: withReply,
                  includeMyRenotes: renote,
                  untilDate: untilDate?.millisecondsSinceEpoch,
                ),
              );
              if (!mounted) return [];
              ref
                  .read(notesProvider(AccountScope.of(context)))
                  .registerAll(notes);
              return notes.toList();
            },
            itemBuilder: (context, element) {
              return MisskeyNote(
                note: element,
                loginAs: widget.actualAccount,
              );
            },
          ),
        ),
      ],
    );
  }
}
