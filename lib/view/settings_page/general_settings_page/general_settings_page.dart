import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miria/model/general_settings.dart';
import 'package:miria/providers.dart';
import 'package:miria/router/app_router.dart';

@RoutePage()
class GeneralSettingsPage extends ConsumerStatefulWidget {
  const GeneralSettingsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      GeneralSettingsPageState();
}

class GeneralSettingsPageState extends ConsumerState<GeneralSettingsPage> {
  String lightModeTheme = "";
  String darkModeTheme = "";
  ThemeColorSystem colorSystem = ThemeColorSystem.system;
  NSFWInherit nsfwInherit = NSFWInherit.inherit;
  AutomaticPush automaticPush = AutomaticPush.none;
  bool enableDirectReaction = false;
  bool enableAnimatedMFM = true;
  bool enableLongTextElipsed = false;
  bool enableFavoritedRenoteElipsed = true;
  TabPosition tabPosition = TabPosition.top;
  double textScaleFactor = 1.0;
  EmojiType emojiType = EmojiType.twemoji;
  String? fontName;
  bool hideAvatar = false;
  bool isChicken = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final settings = ref.read(generalSettingsRepositoryProvider).settings;
    final colorThemes = ref.read(colorThemeRepositoryProvider);
    setState(() {
      lightModeTheme = settings.lightColorThemeId;
      if (lightModeTheme.isEmpty ||
          colorThemes.every(
            (element) => element.isDarkTheme || element.id != lightModeTheme,
          )) {
        lightModeTheme =
            colorThemes.firstWhere((element) => !element.isDarkTheme).id;
      }
      darkModeTheme = settings.darkColorThemeId;
      if (darkModeTheme.isEmpty ||
          colorThemes.every(
            (element) => !element.isDarkTheme || element.id != darkModeTheme,
          )) {
        darkModeTheme =
            colorThemes.firstWhere((element) => element.isDarkTheme).id;
      }
      colorSystem = settings.themeColorSystem;
      nsfwInherit = settings.nsfwInherit;
      enableDirectReaction = settings.enableDirectReaction;
      automaticPush = settings.automaticPush;
      enableAnimatedMFM = settings.enableAnimatedMFM;
      enableLongTextElipsed = settings.enableLongTextElipsed;
      enableFavoritedRenoteElipsed = settings.enableFavoritedRenoteElipsed;
      tabPosition = settings.tabPosition;
      textScaleFactor = settings.textScaleFactor;
      emojiType = settings.emojiType;
      fontName = settings.fontName;
      hideAvatar = settings.hideAvatar;
      isChicken = settings.isChicken;
    });
  }

  Future<void> save() async {
    ref.read(generalSettingsRepositoryProvider).update(
          GeneralSettings(
            lightColorThemeId: lightModeTheme,
            darkColorThemeId: darkModeTheme,
            themeColorSystem: colorSystem,
            nsfwInherit: nsfwInherit,
            enableDirectReaction: enableDirectReaction,
            automaticPush: automaticPush,
            enableAnimatedMFM: enableAnimatedMFM,
            enableFavoritedRenoteElipsed: enableFavoritedRenoteElipsed,
            enableLongTextElipsed: enableLongTextElipsed,
            tabPosition: tabPosition,
            emojiType: emojiType,
            textScaleFactor: textScaleFactor,
            fontName: fontName,
            hideAvatar: hideAvatar,
            isChicken: isChicken,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(generalSettingsRepositoryProvider).settings;
    final colorThemes = ref.watch(colorThemeRepositoryProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("全般設定")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("全般", style: Theme.of(context).textTheme.titleLarge),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("閲覧注意のついたノートの表示"),
                      DropdownButton<NSFWInherit>(
                        isExpanded: true,
                        items: [
                          for (final element in NSFWInherit.values)
                            DropdownMenuItem(
                              value: element,
                              child: Text(element.displayName),
                            ),
                        ],
                        value: nsfwInherit,
                        onChanged: (value) => setState(
                          () {
                            nsfwInherit = value ?? NSFWInherit.inherit;
                            save();
                          },
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("一覧の自動更新"),
                      DropdownButton<AutomaticPush>(
                        isExpanded: true,
                        items: [
                          for (final element in AutomaticPush.values)
                            DropdownMenuItem(
                              value: element,
                              child: Text(element.displayName),
                            ),
                        ],
                        value: automaticPush,
                        onChanged: (value) => setState(
                          () {
                            automaticPush = value ?? AutomaticPush.none;
                            save();
                          },
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("動きのあるMFM"),
                      CheckboxListTile(
                        value: enableAnimatedMFM,
                        onChanged: (value) => setState(() {
                          enableAnimatedMFM = value ?? true;
                          save();
                        }),
                        title: const Text("動きのあるMFMを有効にします。"),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("ノートの省略"),
                      CheckboxListTile(
                        value: enableFavoritedRenoteElipsed,
                        onChanged: (value) => setState(() {
                          enableFavoritedRenoteElipsed = value ?? true;
                          save();
                        }),
                        title: const Text("リアクション済みノートのRenoteを省略します。"),
                      ),
                      CheckboxListTile(
                        value: enableLongTextElipsed,
                        onChanged: (value) => setState(() {
                          enableLongTextElipsed = value ?? true;
                          save();
                        }),
                        title: const Text("長いノートを省略します。"),
                      ),
                      CheckboxListTile(
                        value: hideAvatar,
                        onChanged: (value) => setState(() {
                          hideAvatar = value ?? true;
                          save();
                        }),
                        title: const Text("ユーザーのアバターを非表示にします。"),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("タブの位置"),
                      DropdownButton<TabPosition>(
                        isExpanded: true,
                        items: [
                          for (final element in TabPosition.values)
                            DropdownMenuItem(
                              value: element,
                              child: Text("${element.displayName}に表示する"),
                            ),
                        ],
                        value: tabPosition,
                        onChanged: (value) => setState(
                          () {
                            tabPosition = value ?? TabPosition.top;
                            save();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "テーマ",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("ライトモードで使うテーマ"),
                      DropdownButton<String>(
                        isExpanded: true,
                        items: [
                          for (final element in colorThemes
                              .where((element) => !element.isDarkTheme))
                            DropdownMenuItem(
                              value: element.id,
                              child: Text("${element.name}っぽいの"),
                            ),
                        ],
                        value: lightModeTheme,
                        onChanged: (value) => setState(
                          () {
                            lightModeTheme = value ?? "";
                            save();
                          },
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("ダークモードで使うテーマ"),
                      DropdownButton<String>(
                        isExpanded: true,
                        items: [
                          for (final element in colorThemes
                              .where((element) => element.isDarkTheme))
                            DropdownMenuItem(
                              value: element.id,
                              child: Text("${element.name}っぽいの"),
                            ),
                        ],
                        value: darkModeTheme,
                        onChanged: (value) => setState(() {
                          darkModeTheme = value ?? "";
                          save();
                        }),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("ライトモード・ダークモードのつかいわけ"),
                      DropdownButton<ThemeColorSystem>(
                        isExpanded: true,
                        items: [
                          for (final colorSystem in ThemeColorSystem.values)
                            DropdownMenuItem(
                              value: colorSystem,
                              child: Text(colorSystem.displayName),
                            ),
                        ],
                        value: colorSystem,
                        onChanged: (value) => setState(() {
                          colorSystem = value ?? ThemeColorSystem.system;
                          save();
                        }),
                      ),
                      ListTile(
                        title: const Text("テーマの管理"),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          context.pushRoute(const InstalledThemesRoute());
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "リアクション",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      CheckboxListTile(
                        value: enableDirectReaction,
                        title: const Text("ノート内の絵文字タップでリアクションする"),
                        subtitle: const Text(
                          "ノート内の絵文字をタップしてリアクションします。MFMや外部サーバーの絵文字の場合うまく機能しないことがあります。",
                        ),
                        onChanged: (value) {
                          setState(() {
                            enableDirectReaction = !enableDirectReaction;
                            save();
                          });
                        },
                      ),
                      CheckboxListTile(
                        value: isChicken,
                        title: const Text("🐔"),
                        onChanged: (value) {
                          setState(() {
                            isChicken = value ?? false;
                            save();
                          });
                        },
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      const Text("絵文字のスタイル"),
                      DropdownButton(
                        items: [
                          for (final type in EmojiType.values)
                            DropdownMenuItem(
                              value: type,
                              child: Text(type.displayName),
                            ),
                        ],
                        value: emojiType,
                        isExpanded: true,
                        onChanged: (value) {
                          setState(() {
                            emojiType = value ?? EmojiType.twemoji;
                            save();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "フォント",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 10),
                      const Text("フォント"),
                      ListTile(
                        title: Text(fontName ?? "デフォルト"),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () async {
                          final keys = GoogleFonts.asMap().keys;
                          final result = await showModalBottomSheet<(String?,)>(
                            context: context,
                            builder: (context) => ListView.builder(
                              itemCount: keys.length,
                              itemBuilder: (context, index) => index == 0
                                  ? ListTile(
                                      title: const Text("デフォルト"),
                                      onTap: () =>
                                          Navigator.of(context).pop((null,)),
                                    )
                                  : ListTile(
                                      title: Text(
                                        keys.elementAt(index - 1),
                                        style: GoogleFonts.getFont(
                                          keys.elementAt(index - 1),
                                        ),
                                      ),
                                      onTap: () => Navigator.of(context)
                                          .pop((keys.elementAt(index - 1),)),
                                    ),
                            ),
                          );
                          if (result == null) {
                            return;
                          }
                          setState(() {
                            fontName = result.$1;
                            save();
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      const Text("フォントサイズ"),
                      Slider(
                        value: textScaleFactor,
                        min: 0.5,
                        max: 1.5,
                        divisions: 10,
                        label: "${(textScaleFactor * 100).toInt()}%",
                        onChanged: (value) {
                          setState(() {
                            textScaleFactor = value;
                          });
                        },
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed:
                              (settings.textScaleFactor == textScaleFactor)
                                  ? null
                                  : save,
                          child: const Text("変更"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
