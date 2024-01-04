import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/misskey_notes/misskey_note.dart';
import 'package:miria/view/common/pushable_listview.dart';
import 'package:misskey_dart/misskey_dart.dart';

class ChannelHighlight extends ConsumerWidget {
  final String channelId;
  const ChannelHighlight({
    super.key,
    required this.channelId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = AccountScope.of(context);
    return PushableListView<Note>(
      initializeFuture: () async {
        final response = await ref
            .read(misskeyProvider(account))
            .notes
            .featured(NotesFeaturedRequest(channelId: channelId));
        ref.read(notesProvider(account)).registerAll(response);
        return response.toList();
      },
      nextFuture: (lastItem, _) async {
        final response =
            await ref.read(misskeyProvider(account)).notes.featured(
                  NotesFeaturedRequest(
                    channelId: channelId,
                    untilId: lastItem.id,
                  ),
                );
        ref.read(notesProvider(account)).registerAll(response);
        return response.toList();
      },
      itemBuilder: (context, note) => MisskeyNote(note: note),
    );
  }
}
