import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miria/model/misskey_emoji_data.dart';
import 'package:miria/providers.dart';
import 'package:miria/repository/emoji_repository.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/misskey_notes/custom_emoji.dart';
import 'package:miria/view/dialogs/simple_message_dialog.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ReactionPickerContent extends ConsumerStatefulWidget {
  final FutureOr Function(MisskeyEmojiData emoji) onTap;
  final bool isAcceptSensitive;

  const ReactionPickerContent({
    super.key,
    required this.onTap,
    required this.isAcceptSensitive,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ReactionPickerContentState();
}

class ReactionPickerContentState extends ConsumerState<ReactionPickerContent> {
  final emojis = <MisskeyEmojiData>[];
  final categoryList = <String>[];
  EmojiRepository get emojiRepository =>
      ref.read(emojiRepositoryProvider(AccountScope.of(context)));

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    emojis.clear();
    emojis.addAll(emojiRepository.defaultEmojis().toList());

    categoryList
      ..clear()
      ..addAll(emojiRepository.emoji
              ?.map((e) => e.category)
              .toSet()
              .toList()
              .whereNotNull() ??
          []);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              Future(() async {
                final result = await emojiRepository.searchEmojis(value);
                if (!mounted) return;
                setState(() {
                  emojis.clear();
                  emojis.addAll(result);
                });
              });
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Align(
            alignment: Alignment.topLeft,
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                for (final emoji in emojis)
                  EmojiButton(
                    emoji: emoji,
                    onTap: widget.onTap,
                    isForceVisible: true,
                    isAcceptSensitive: widget.isAcceptSensitive,
                  )
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categoryList.length,
            itemBuilder: (context, index) => ExpansionTile(
              title: Text(categoryList[index]),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        for (final emoji in (emojiRepository.emoji ?? []).where(
                            (element) =>
                                element.category == categoryList[index]))
                          EmojiButton(
                            emoji: emoji.emoji,
                            onTap: widget.onTap,
                            isAcceptSensitive: widget.isAcceptSensitive,
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EmojiButton extends ConsumerStatefulWidget {
  final MisskeyEmojiData emoji;
  final FutureOr Function(MisskeyEmojiData emoji) onTap;
  final bool isForceVisible;
  final bool isAcceptSensitive;

  const EmojiButton({
    super.key,
    required this.emoji,
    required this.onTap,
    this.isForceVisible = false,
    required this.isAcceptSensitive,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => EmojiButtonState();
}

class EmojiButtonState extends ConsumerState<EmojiButton> {
  late var isVisibility = widget.isForceVisible;
  late var isVisibilityOnceMore = widget.isForceVisible;

  @override
  Widget build(BuildContext context) {
    final disabled = !widget.isAcceptSensitive && widget.emoji.isSensitive;
    return VisibilityDetector(
        key: Key(widget.emoji.baseName),
        onVisibilityChanged: (visibilityInfo) {
          if (visibilityInfo.visibleFraction != 0) {
            setState(() {
              isVisibility = true;
              isVisibilityOnceMore = true;
            });
          }
        },
        child: DecoratedBox(
            decoration: disabled && isVisibility
                ? BoxDecoration(color: Theme.of(context).disabledColor)
                : const BoxDecoration(),
            child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                  elevation: MaterialStatePropertyAll(0),
                  minimumSize: MaterialStatePropertyAll(Size(0, 0)),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () async {
                  if (!isVisibility) return;
                  if (disabled) {
                    SimpleMessageDialog.show(
                        context, "ここでセンシティブなカスタム絵文字を使われへんねやわ");
                  } else {
                    widget.onTap.call(widget.emoji);
                  }
                },
                child: isVisibility
                    ? SizedBox(
                        height: 32 * MediaQuery.of(context).textScaleFactor,
                        child: CustomEmoji(emojiData: widget.emoji))
                    : SizedBox(
                        width: 32 * MediaQuery.of(context).textScaleFactor,
                        height: 32 * MediaQuery.of(context).textScaleFactor))));
  }
}
