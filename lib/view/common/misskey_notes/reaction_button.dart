import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/misskey_emoji_data.dart';
import 'package:miria/providers.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/misskey_notes/custom_emoji.dart';
import 'package:miria/view/common/misskey_notes/reaction_user_dialog.dart';
import 'package:miria/view/dialogs/simple_confirm_dialog.dart';
import 'package:miria/view/themes/app_theme.dart';
import 'package:misskey_dart/misskey_dart.dart';

class ReactionButton extends ConsumerStatefulWidget {
  final MisskeyEmojiData emojiData;
  final int reactionCount;
  final String? myReaction;
  final String noteId;

  const ReactionButton({
    super.key,
    required this.emojiData,
    required this.reactionCount,
    required this.myReaction,
    required this.noteId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ReactionButtonState();
}

class ReactionButtonState extends ConsumerState<ReactionButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final emojiData = widget.emojiData;
    final isMyReaction = (emojiData is CustomEmojiData &&
            widget.myReaction == emojiData.hostedName) ||
        (emojiData is UnicodeEmojiData && widget.myReaction == emojiData.char);

    final backgroundColor = isMyReaction
        ? AppTheme.of(context).reactionButtonMeReactedColor
        : (emojiData is CustomEmojiData && !emojiData.isCurrentServer)
            ? Colors.transparent
            : AppTheme.of(context).reactionButtonBackgroundColor;

    final foreground = isMyReaction
        ? Theme.of(context).primaryColor
        : Theme.of(context).textTheme.bodyMedium?.color;

    final borderColor =
        isMyReaction ? Theme.of(context).primaryColor : Colors.transparent;

    return ElevatedButton(
      onPressed: () async {
        final account = AccountScope.of(context);
        if (!account.hasToken) {
          return;
        }
        // リアクション取り消し
        if (isMyReaction) {
          if (await SimpleConfirmDialog.show(
                context: context,
                message: S.of(context).confirmDeleteReaction,
                primary: S.of(context).cancelReaction,
                secondary: S.of(context).cancel,
              ) !=
              true) {
            return;
          }

          await ref
              .read(misskeyProvider(account))
              .notes
              .reactions
              .delete(NotesReactionsDeleteRequest(noteId: widget.noteId));
          ref.read(notesProvider(account)).removeMyReaction(widget.noteId);

          return;
        }

        // すでに別のリアクションを行っている
        if (widget.myReaction != null) return;

        if (ref.read(generalSettingsRepositoryProvider).settings.isChicken) {
          final result = await SimpleConfirmDialog.show(
            context: context,
            message: S.of(context).confirmCreateReaction,
            primary: S.of(context).createReaction,
            secondary: S.of(context).cancel,
          );
          if (!(result ?? false)) {
            return;
          }
        }

        final String reactionString;
        final emojiData = widget.emojiData;
        switch (emojiData) {
          case UnicodeEmojiData():
            reactionString = emojiData.char;
          case CustomEmojiData():
            if (!emojiData.isCurrentServer) return;
            reactionString = ":${emojiData.baseName}@.:";
          case NotEmojiData():
            return;
        }

        await ref.read(misskeyProvider(account)).notes.reactions.create(
              NotesReactionsCreateRequest(
                noteId: widget.noteId,
                reaction: reactionString,
              ),
            );
        ref
            .read(notesProvider(account))
            .addMyReaction(widget.noteId, reactionString);
      },
      onLongPress: () {
        showDialog<void>(
          context: context,
          builder: (context2) {
            return ReactionUserDialog(
              account: AccountScope.of(context),
              emojiData: widget.emojiData,
              noteId: widget.noteId,
            );
          },
        );
      },
      style: AppTheme.of(context).reactionButtonStyle.copyWith(
            backgroundColor: MaterialStatePropertyAll(backgroundColor),
            side: MaterialStatePropertyAll(
              BorderSide(color: borderColor),
            ),
          ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: min(MediaQuery.of(context).size.width, 800) * 0.75,
              minHeight: MediaQuery.textScalerOf(context).scale(24),
              maxHeight: MediaQuery.textScalerOf(context).scale(24),
            ),
            child: CustomEmoji(
              emojiData: widget.emojiData,
              isAttachTooltip: false,
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 5)),
          Text(
            widget.reactionCount.toString(),
            style: TextStyle(color: foreground),
          ),
        ],
      ),
    );
  }
}
