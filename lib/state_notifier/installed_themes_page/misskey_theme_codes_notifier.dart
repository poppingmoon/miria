import "package:json5/json5.dart";
import "package:miria/model/color_theme.dart";
import "package:miria/model/misskey_theme.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:shared_preferences/shared_preferences.dart";

part "misskey_theme_codes_notifier.g.dart";

@riverpod
class MisskeyThemeCodesNotifier extends _$MisskeyThemeCodesNotifier {
  @override
  List<String> build() {
    Future(_load);
    return [];
  }

  static const _key = "themes";

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final themes = prefs.getStringList(_key);
    if (themes == null) {
      return;
    }
    state = themes;
  }

  Future<void> _save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_key, state);
  }

  Future<void> install(String code) async {
    state = [...state, code];
    await _save();
  }

  Future<void> uninstall(int index) async {
    state = [
      ...state.sublist(0, index),
      ...state.sublist(index + 1),
    ];
    await _save();
  }

  Future<void> import(List<String> codes) async {
    state = codes;
    await _save();
  }
}

@riverpod
List<MisskeyTheme?> misskeyThemes(MisskeyThemesRef ref) {
  final codes = ref.watch(misskeyThemeCodesNotifierProvider);
  return codes.map((code) {
    try {
      return MisskeyTheme.fromJson(json5Decode(code) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }).toList();
}

@riverpod
List<ColorTheme> installedColorThemes(InstalledColorThemesRef ref) {
  final themes = ref.watch(misskeyThemesProvider);
  return themes.nonNulls
      .map((theme) {
        try {
          return ColorTheme.misskey(theme);
        } catch (_) {
          return null;
        }
      })
      .nonNulls
      .toList();
}
