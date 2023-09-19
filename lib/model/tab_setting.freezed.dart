// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TabSetting _$TabSettingFromJson(Map<String, dynamic> json) {
  return _TabSetting.fromJson(json);
}

/// @nodoc
mixin _$TabSetting {
  @IconDataConverter()
  TabIcon get icon => throw _privateConstructorUsedError;

  /// タブ種別
  TabType get tabType => throw _privateConstructorUsedError;

  /// ロールタイムラインのノートの場合、ロールID
  String? get roleId => throw _privateConstructorUsedError;

  /// チャンネルのノートの場合、チャンネルID
  String? get channelId => throw _privateConstructorUsedError;

  /// リストのノートの場合、リストID
  String? get listId => throw _privateConstructorUsedError;

  /// アンテナのノートの場合、アンテナID
  String? get antennaId => throw _privateConstructorUsedError;

  /// ノートの投稿のキャプチャをするかどうか
  bool get isSubscribe => throw _privateConstructorUsedError;

  /// タブ名
  String get name => throw _privateConstructorUsedError;

  /// アカウント情報
  Account get account => throw _privateConstructorUsedError;

  /// Renoteを表示するかどうか
  bool get renoteDisplay => throw _privateConstructorUsedError;

  /// ファイル付きのノートのみを表示するかどうか
  bool get withFiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabSettingCopyWith<TabSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabSettingCopyWith<$Res> {
  factory $TabSettingCopyWith(
          TabSetting value, $Res Function(TabSetting) then) =
      _$TabSettingCopyWithImpl<$Res, TabSetting>;
  @useResult
  $Res call(
      {@IconDataConverter() TabIcon icon,
      TabType tabType,
      String? roleId,
      String? channelId,
      String? listId,
      String? antennaId,
      bool isSubscribe,
      String name,
      Account account,
      bool renoteDisplay,
      bool withFiles});

  $TabIconCopyWith<$Res> get icon;
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$TabSettingCopyWithImpl<$Res, $Val extends TabSetting>
    implements $TabSettingCopyWith<$Res> {
  _$TabSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? tabType = null,
    Object? roleId = freezed,
    Object? channelId = freezed,
    Object? listId = freezed,
    Object? antennaId = freezed,
    Object? isSubscribe = null,
    Object? name = null,
    Object? account = null,
    Object? renoteDisplay = null,
    Object? withFiles = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as TabIcon,
      tabType: null == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as TabType,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      listId: freezed == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String?,
      antennaId: freezed == antennaId
          ? _value.antennaId
          : antennaId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubscribe: null == isSubscribe
          ? _value.isSubscribe
          : isSubscribe // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      renoteDisplay: null == renoteDisplay
          ? _value.renoteDisplay
          : renoteDisplay // ignore: cast_nullable_to_non_nullable
              as bool,
      withFiles: null == withFiles
          ? _value.withFiles
          : withFiles // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TabIconCopyWith<$Res> get icon {
    return $TabIconCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TabSettingCopyWith<$Res>
    implements $TabSettingCopyWith<$Res> {
  factory _$$_TabSettingCopyWith(
          _$_TabSetting value, $Res Function(_$_TabSetting) then) =
      __$$_TabSettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@IconDataConverter() TabIcon icon,
      TabType tabType,
      String? roleId,
      String? channelId,
      String? listId,
      String? antennaId,
      bool isSubscribe,
      String name,
      Account account,
      bool renoteDisplay,
      bool withFiles});

  @override
  $TabIconCopyWith<$Res> get icon;
  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_TabSettingCopyWithImpl<$Res>
    extends _$TabSettingCopyWithImpl<$Res, _$_TabSetting>
    implements _$$_TabSettingCopyWith<$Res> {
  __$$_TabSettingCopyWithImpl(
      _$_TabSetting _value, $Res Function(_$_TabSetting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? tabType = null,
    Object? roleId = freezed,
    Object? channelId = freezed,
    Object? listId = freezed,
    Object? antennaId = freezed,
    Object? isSubscribe = null,
    Object? name = null,
    Object? account = null,
    Object? renoteDisplay = null,
    Object? withFiles = null,
  }) {
    return _then(_$_TabSetting(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as TabIcon,
      tabType: null == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as TabType,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      listId: freezed == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as String?,
      antennaId: freezed == antennaId
          ? _value.antennaId
          : antennaId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubscribe: null == isSubscribe
          ? _value.isSubscribe
          : isSubscribe // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      renoteDisplay: null == renoteDisplay
          ? _value.renoteDisplay
          : renoteDisplay // ignore: cast_nullable_to_non_nullable
              as bool,
      withFiles: null == withFiles
          ? _value.withFiles
          : withFiles // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TabSetting extends _TabSetting {
  const _$_TabSetting(
      {@IconDataConverter() required this.icon,
      required this.tabType,
      this.roleId,
      this.channelId,
      this.listId,
      this.antennaId,
      this.isSubscribe = true,
      required this.name,
      required this.account,
      this.renoteDisplay = true,
      this.withFiles = false})
      : super._();

  factory _$_TabSetting.fromJson(Map<String, dynamic> json) =>
      _$$_TabSettingFromJson(json);

  @override
  @IconDataConverter()
  final TabIcon icon;

  /// タブ種別
  @override
  final TabType tabType;

  /// ロールタイムラインのノートの場合、ロールID
  @override
  final String? roleId;

  /// チャンネルのノートの場合、チャンネルID
  @override
  final String? channelId;

  /// リストのノートの場合、リストID
  @override
  final String? listId;

  /// アンテナのノートの場合、アンテナID
  @override
  final String? antennaId;

  /// ノートの投稿のキャプチャをするかどうか
  @override
  @JsonKey()
  final bool isSubscribe;

  /// タブ名
  @override
  final String name;

  /// アカウント情報
  @override
  final Account account;

  /// Renoteを表示するかどうか
  @override
  @JsonKey()
  final bool renoteDisplay;

  /// ファイル付きのノートのみを表示するかどうか
  @override
  @JsonKey()
  final bool withFiles;

  @override
  String toString() {
    return 'TabSetting(icon: $icon, tabType: $tabType, roleId: $roleId, channelId: $channelId, listId: $listId, antennaId: $antennaId, isSubscribe: $isSubscribe, name: $name, account: $account, renoteDisplay: $renoteDisplay, withFiles: $withFiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabSetting &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.tabType, tabType) || other.tabType == tabType) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.antennaId, antennaId) ||
                other.antennaId == antennaId) &&
            (identical(other.isSubscribe, isSubscribe) ||
                other.isSubscribe == isSubscribe) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.renoteDisplay, renoteDisplay) ||
                other.renoteDisplay == renoteDisplay) &&
            (identical(other.withFiles, withFiles) ||
                other.withFiles == withFiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, tabType, roleId, channelId,
      listId, antennaId, isSubscribe, name, account, renoteDisplay, withFiles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabSettingCopyWith<_$_TabSetting> get copyWith =>
      __$$_TabSettingCopyWithImpl<_$_TabSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TabSettingToJson(
      this,
    );
  }
}

abstract class _TabSetting extends TabSetting {
  const factory _TabSetting(
      {@IconDataConverter() required final TabIcon icon,
      required final TabType tabType,
      final String? roleId,
      final String? channelId,
      final String? listId,
      final String? antennaId,
      final bool isSubscribe,
      required final String name,
      required final Account account,
      final bool renoteDisplay,
      final bool withFiles}) = _$_TabSetting;
  const _TabSetting._() : super._();

  factory _TabSetting.fromJson(Map<String, dynamic> json) =
      _$_TabSetting.fromJson;

  @override
  @IconDataConverter()
  TabIcon get icon;
  @override

  /// タブ種別
  TabType get tabType;
  @override

  /// ロールタイムラインのノートの場合、ロールID
  String? get roleId;
  @override

  /// チャンネルのノートの場合、チャンネルID
  String? get channelId;
  @override

  /// リストのノートの場合、リストID
  String? get listId;
  @override

  /// アンテナのノートの場合、アンテナID
  String? get antennaId;
  @override

  /// ノートの投稿のキャプチャをするかどうか
  bool get isSubscribe;
  @override

  /// タブ名
  String get name;
  @override

  /// アカウント情報
  Account get account;
  @override

  /// Renoteを表示するかどうか
  bool get renoteDisplay;
  @override

  /// ファイル付きのノートのみを表示するかどうか
  bool get withFiles;
  @override
  @JsonKey(ignore: true)
  _$$_TabSettingCopyWith<_$_TabSetting> get copyWith =>
      throw _privateConstructorUsedError;
}
