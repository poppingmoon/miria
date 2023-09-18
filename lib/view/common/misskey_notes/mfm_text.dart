import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark.dart';
import 'package:flutter_highlighting/themes/github.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:highlighting/languages/all.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:mfm_renderer/mfm_renderer.dart';
import 'package:miria/model/general_settings.dart';
import 'package:miria/model/misskey_emoji_data.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';
import 'package:miria/view/common/account_scope.dart';
import 'package:miria/view/common/error_dialog_handler.dart';
import 'package:miria/view/common/misskey_notes/custom_emoji.dart';
import 'package:miria/view/common/misskey_notes/network_image.dart';
import 'package:miria/view/themes/app_theme.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:twemoji_v2/twemoji_v2.dart';
import 'package:url_launcher/url_launcher.dart';

class MfmText extends ConsumerStatefulWidget {
  final String? mfmText;
  final List<MfmNode>? mfmNode;
  final String? host;
  final TextStyle? style;
  final Map<String, String> emoji;
  final bool isNyaize;
  final List<InlineSpan> suffixSpan;
  final List<InlineSpan> prefixSpan;
  final void Function(MisskeyEmojiData)? onEmojiTap;
  final bool isEnableAnimatedMFM;
  final TextOverflow? overflow;
  final int? maxLines;

  const MfmText({
    super.key,
    this.mfmText,
    this.mfmNode,
    this.host,
    this.style,
    this.emoji = const {},
    this.isNyaize = false,
    this.suffixSpan = const [],
    this.prefixSpan = const [],
    this.onEmojiTap,
    this.isEnableAnimatedMFM = true,
    this.overflow,
    this.maxLines,
  }) : assert(mfmText != null || mfmNode != null);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MfmTextState();
}

class MfmTextState extends ConsumerState<MfmText> {
  Future<void> onTapLink(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) {
      return; //TODO: なおす
    }
    final account = AccountScope.of(context);

    // 他サーバーや外部サイトは別アプリで起動する
    //TODO: nodeinfoから相手先サーバーがMisskeyの場合はそこで解決する
    if (uri.host != AccountScope.of(context).host) {
      if (await canLaunchUrl(uri)) {
        if (!await launchUrl(
          uri,
          mode: LaunchMode.externalNonBrowserApplication,
        )) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      }
    } else if (uri.pathSegments.length == 2 &&
        uri.pathSegments.first == "clips") {
      // クリップはクリップの画面で開く
      context.pushRoute(
        ClipDetailRoute(account: account, id: uri.pathSegments[1]),
      );
    } else if (uri.pathSegments.length == 2 &&
        uri.pathSegments.first == "channels") {
      context.pushRoute(
        ChannelDetailRoute(account: account, channelId: uri.pathSegments[1]),
      );
    } else if (uri.pathSegments.length == 2 &&
        uri.pathSegments.first == "notes") {
      final note = await ref
          .read(misskeyProvider(account))
          .notes
          .show(NotesShowRequest(noteId: uri.pathSegments[1]));
      if (!mounted) return;
      context.pushRoute(NoteDetailRoute(account: account, note: note));
    } else if (uri.pathSegments.length == 1 &&
        uri.pathSegments.first.startsWith("@")) {
      await onMentionTap(uri.pathSegments.first);
    } else {
      // 自サーバーは内部ブラウザで起動する
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.inAppWebView);
      }
    }
  }

  Future<void> onMentionTap(String userName) async {
    // 自分のインスタンスの誰か
    // 本当は向こうで呼べばいいのでいらないのだけど
    final regResult = RegExp(r'^@?(.+?)(@(.+?))?$').firstMatch(userName);

    final contextHost = AccountScope.of(context).host;
    final noteHost = widget.host ?? AccountScope.of(context).host;
    final regResultHost = regResult?.group(3);
    final String? finalHost;

    if (regResultHost == null && noteHost == contextHost) {
      // @なし
      finalHost = null;
    } else if (regResultHost == contextHost) {
      // @自分ドメイン
      finalHost = null;
    } else if (regResultHost != null) {
      finalHost = regResultHost;
    } else {
      finalHost = noteHost;
    }

    final response = await ref
        .read(misskeyProvider(AccountScope.of(context)))
        .users
        .showByName(
          UsersShowByUserNameRequest(
            userName: regResult?.group(1) ?? "",
            host: finalHost,
          ),
        );

    if (!mounted) return;
    context.pushRoute(
      UserRoute(userId: response.id, account: AccountScope.of(context)),
    );
  }

  Future<void> onSearch(String query) async {
    final uri = Uri(
      scheme: "https",
      host: "google.com",
      pathSegments: ["search"],
      queryParameters: {"q": query},
    );
    launchUrl(uri);
  }

  void onHashtagTap(String hashtag) {
    context.pushRoute(
      HashtagRoute(account: AccountScope.of(context), hashtag: hashtag),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Mfm(
      mfmText: widget.mfmText,
      mfmNode: widget.mfmNode,
      emojiBuilder: (builderContext, emojiName, style) {
        final emojiData = MisskeyEmojiData.fromEmojiName(
          emojiName: ":$emojiName:",
          repository: ref
              .read(emojiRepositoryProvider(AccountScope.of(builderContext))),
          emojiInfo: widget.emoji,
        );
        return DefaultTextStyle(
          style: style ?? DefaultTextStyle.of(builderContext).style,
          child: GestureDetector(
            onTap: MfmBlurScope.of(builderContext)
                ? null
                : () => widget.onEmojiTap?.call(emojiData),
            child: EmojiInk(
              child: CustomEmoji(
                emojiData: emojiData,
                fontSizeRatio: 2,
                style: style,
              ),
            ),
          ),
        );
      },
      unicodeEmojiBuilder:
          (BuildContext builderContext, String emoji, TextStyle? style) {
        if (ref.read(generalSettingsRepositoryProvider).settings.emojiType ==
            EmojiType.system) {
          return TextSpan(
            text: emoji,
            style: style,
            recognizer: MfmBlurScope.of(builderContext)
                ? null
                : (TapGestureRecognizer()
                  ..onTap = () =>
                      widget.onEmojiTap?.call(UnicodeEmojiData(char: emoji))),
          );
        } else {
          return WidgetSpan(
            child: GestureDetector(
              onTap: MfmBlurScope.of(builderContext)
                  ? null
                  : () =>
                      widget.onEmojiTap?.call(UnicodeEmojiData(char: emoji)),
              child: Twemoji(
                emoji: emoji,
                width: style?.fontSize,
                height: style?.fontSize,
              ),
            ),
          );
        }
      },
      codeBlockBuilder: (context, code, lang) => CodeBlock(
        code: code,
        language: lang,
      ),
      serifStyle: AppTheme.of(context).serifStyle,
      linkTap: (src) => onTapLink(src).expectFailure(context),
      linkStyle: AppTheme.of(context).linkStyle,
      hashtagStyle: AppTheme.of(context).hashtagStyle,
      mentionTap: (userName, host, acct) =>
          onMentionTap(acct).expectFailure(context),
      hashtagTap: onHashtagTap,
      searchTap: onSearch,
      style: widget.style,
      isNyaize: widget.isNyaize,
      suffixSpan: widget.suffixSpan,
      prefixSpan: widget.prefixSpan,
      isUseAnimation: widget.isEnableAnimatedMFM,
      overflow: widget.overflow,
      maxLines: widget.maxLines,
    );
  }
}

class CodeBlock extends StatelessWidget {
  final String? language;
  final String code;

  const CodeBlock({
    super.key,
    this.language,
    required this.code,
  });

  String resolveLanguage(String language) {
    if (language == "js") return "javascript";
    if (language == "c++") return "cpp";

    return language;
  }

  @override
  Widget build(BuildContext context) {
    final resolvedLanguage =
        allLanguages[resolveLanguage(language ?? "text")]?.id ?? "javascript";

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: HighlightView(
          code,
          languageId: resolvedLanguage,
          theme:
              AppTheme.of(context).isDarkMode ? githubDarkTheme : githubTheme,
          padding: const EdgeInsets.all(10),
          textStyle: const TextStyle(
            fontFamilyFallback: [
              "Monaco",
              "Menlo",
              "Consolas",
              "Noto Mono",
            ],
          ),
        ),
      ),
    );
  }
}

class EmojiInk extends ConsumerWidget {
  final Widget child;

  const EmojiInk({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabled = ref.watch(
      generalSettingsRepositoryProvider
          .select((value) => value.settings.enableDirectReaction),
    );
    if (isEnabled) {
      return InkWell(child: child);
    } else {
      return child;
    }
  }
}

class SimpleMfmText extends ConsumerWidget {
  final String text;
  final TextStyle? style;
  final Map<String, String> emojis;
  final List<InlineSpan> suffixSpan;
  final List<InlineSpan> prefixSpan;

  const SimpleMfmText(
    this.text, {
    super.key,
    this.style,
    this.emojis = const {},
    this.suffixSpan = const [],
    this.prefixSpan = const [],
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleMfm(
      text,
      emojiBuilder: (context, emojiName, style) => DefaultTextStyle.merge(
        style: style ?? DefaultTextStyle.of(context).style,
        child: CustomEmoji(
          emojiData: MisskeyEmojiData.fromEmojiName(
            emojiName: ":$emojiName:",
            repository:
                ref.read(emojiRepositoryProvider(AccountScope.of(context))),
            emojiInfo: emojis,
          ),
          style: style,
        ),
      ),
      style: style,
      suffixSpan: suffixSpan,
      prefixSpan: prefixSpan,
    );
  }
}

class UserInformation extends ConsumerStatefulWidget {
  final User user;
  const UserInformation({
    super.key,
    required this.user,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => UserInformationState();
}

class UserInformationState extends ConsumerState<UserInformation> {
  String resolveIconUrl(Uri uri) {
    final baseUrl = uri.toString();
    if (baseUrl.startsWith("/")) {
      return "https://${widget.user.host ?? AccountScope.of(context).host}$baseUrl";
    } else {
      return baseUrl;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SimpleMfmText(
      widget.user.name ?? widget.user.username,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.bold),
      emojis: widget.user.emojis,
      suffixSpan: [
        for (final badge in widget.user.badgeRoles)
          if (badge.iconUrl != null)
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Tooltip(
                message: badge.name,
                child: NetworkImageView(
                  type: ImageType.role,
                  url: resolveIconUrl(badge.iconUrl!),
                  height: DefaultTextStyle.of(context).style.fontSize ?? 22,
                ),
              ),
            ),
      ],
    );
  }
}
