// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountSettings _$AccountSettingsFromJson(Map<String, dynamic> json) {
  return _AccountSettings.fromJson(json);
}

/// @nodoc
mixin _$AccountSettings {
  String get userId => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  List<String> get reactions => throw _privateConstructorUsedError;
  NoteVisibility get defaultNoteVisibility =>
      throw _privateConstructorUsedError;
  bool get defaultIsLocalOnly => throw _privateConstructorUsedError;
  ReactionAcceptance? get defaultReactionAcceptance =>
      throw _privateConstructorUsedError;
  CacheStrategy get iCacheStrategy => throw _privateConstructorUsedError;
  DateTime? get latestICached => throw _privateConstructorUsedError;
  CacheStrategy get emojiCacheStrategy => throw _privateConstructorUsedError;
  DateTime? get latestEmojiCached => throw _privateConstructorUsedError;
  CacheStrategy get metaChacheStrategy => throw _privateConstructorUsedError;
  DateTime? get latestMetaCached => throw _privateConstructorUsedError;
  bool get forceShowAd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountSettingsCopyWith<AccountSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSettingsCopyWith<$Res> {
  factory $AccountSettingsCopyWith(
          AccountSettings value, $Res Function(AccountSettings) then) =
      _$AccountSettingsCopyWithImpl<$Res, AccountSettings>;
  @useResult
  $Res call(
      {String userId,
      String host,
      List<String> reactions,
      NoteVisibility defaultNoteVisibility,
      bool defaultIsLocalOnly,
      ReactionAcceptance? defaultReactionAcceptance,
      CacheStrategy iCacheStrategy,
      DateTime? latestICached,
      CacheStrategy emojiCacheStrategy,
      DateTime? latestEmojiCached,
      CacheStrategy metaChacheStrategy,
      DateTime? latestMetaCached,
      bool forceShowAd});
}

/// @nodoc
class _$AccountSettingsCopyWithImpl<$Res, $Val extends AccountSettings>
    implements $AccountSettingsCopyWith<$Res> {
  _$AccountSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? host = null,
    Object? reactions = null,
    Object? defaultNoteVisibility = null,
    Object? defaultIsLocalOnly = null,
    Object? defaultReactionAcceptance = freezed,
    Object? iCacheStrategy = null,
    Object? latestICached = freezed,
    Object? emojiCacheStrategy = null,
    Object? latestEmojiCached = freezed,
    Object? metaChacheStrategy = null,
    Object? latestMetaCached = freezed,
    Object? forceShowAd = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      reactions: null == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultNoteVisibility: null == defaultNoteVisibility
          ? _value.defaultNoteVisibility
          : defaultNoteVisibility // ignore: cast_nullable_to_non_nullable
              as NoteVisibility,
      defaultIsLocalOnly: null == defaultIsLocalOnly
          ? _value.defaultIsLocalOnly
          : defaultIsLocalOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultReactionAcceptance: freezed == defaultReactionAcceptance
          ? _value.defaultReactionAcceptance
          : defaultReactionAcceptance // ignore: cast_nullable_to_non_nullable
              as ReactionAcceptance?,
      iCacheStrategy: null == iCacheStrategy
          ? _value.iCacheStrategy
          : iCacheStrategy // ignore: cast_nullable_to_non_nullable
              as CacheStrategy,
      latestICached: freezed == latestICached
          ? _value.latestICached
          : latestICached // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      emojiCacheStrategy: null == emojiCacheStrategy
          ? _value.emojiCacheStrategy
          : emojiCacheStrategy // ignore: cast_nullable_to_non_nullable
              as CacheStrategy,
      latestEmojiCached: freezed == latestEmojiCached
          ? _value.latestEmojiCached
          : latestEmojiCached // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metaChacheStrategy: null == metaChacheStrategy
          ? _value.metaChacheStrategy
          : metaChacheStrategy // ignore: cast_nullable_to_non_nullable
              as CacheStrategy,
      latestMetaCached: freezed == latestMetaCached
          ? _value.latestMetaCached
          : latestMetaCached // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      forceShowAd: null == forceShowAd
          ? _value.forceShowAd
          : forceShowAd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountSettingsCopyWith<$Res>
    implements $AccountSettingsCopyWith<$Res> {
  factory _$$_AccountSettingsCopyWith(
          _$_AccountSettings value, $Res Function(_$_AccountSettings) then) =
      __$$_AccountSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String host,
      List<String> reactions,
      NoteVisibility defaultNoteVisibility,
      bool defaultIsLocalOnly,
      ReactionAcceptance? defaultReactionAcceptance,
      CacheStrategy iCacheStrategy,
      DateTime? latestICached,
      CacheStrategy emojiCacheStrategy,
      DateTime? latestEmojiCached,
      CacheStrategy metaChacheStrategy,
      DateTime? latestMetaCached,
      bool forceShowAd});
}

/// @nodoc
class __$$_AccountSettingsCopyWithImpl<$Res>
    extends _$AccountSettingsCopyWithImpl<$Res, _$_AccountSettings>
    implements _$$_AccountSettingsCopyWith<$Res> {
  __$$_AccountSettingsCopyWithImpl(
      _$_AccountSettings _value, $Res Function(_$_AccountSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? host = null,
    Object? reactions = null,
    Object? defaultNoteVisibility = null,
    Object? defaultIsLocalOnly = null,
    Object? defaultReactionAcceptance = freezed,
    Object? iCacheStrategy = null,
    Object? latestICached = freezed,
    Object? emojiCacheStrategy = null,
    Object? latestEmojiCached = freezed,
    Object? metaChacheStrategy = null,
    Object? latestMetaCached = freezed,
    Object? forceShowAd = null,
  }) {
    return _then(_$_AccountSettings(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      reactions: null == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      defaultNoteVisibility: null == defaultNoteVisibility
          ? _value.defaultNoteVisibility
          : defaultNoteVisibility // ignore: cast_nullable_to_non_nullable
              as NoteVisibility,
      defaultIsLocalOnly: null == defaultIsLocalOnly
          ? _value.defaultIsLocalOnly
          : defaultIsLocalOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultReactionAcceptance: freezed == defaultReactionAcceptance
          ? _value.defaultReactionAcceptance
          : defaultReactionAcceptance // ignore: cast_nullable_to_non_nullable
              as ReactionAcceptance?,
      iCacheStrategy: null == iCacheStrategy
          ? _value.iCacheStrategy
          : iCacheStrategy // ignore: cast_nullable_to_non_nullable
              as CacheStrategy,
      latestICached: freezed == latestICached
          ? _value.latestICached
          : latestICached // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      emojiCacheStrategy: null == emojiCacheStrategy
          ? _value.emojiCacheStrategy
          : emojiCacheStrategy // ignore: cast_nullable_to_non_nullable
              as CacheStrategy,
      latestEmojiCached: freezed == latestEmojiCached
          ? _value.latestEmojiCached
          : latestEmojiCached // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metaChacheStrategy: null == metaChacheStrategy
          ? _value.metaChacheStrategy
          : metaChacheStrategy // ignore: cast_nullable_to_non_nullable
              as CacheStrategy,
      latestMetaCached: freezed == latestMetaCached
          ? _value.latestMetaCached
          : latestMetaCached // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      forceShowAd: null == forceShowAd
          ? _value.forceShowAd
          : forceShowAd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountSettings extends _AccountSettings {
  const _$_AccountSettings(
      {required this.userId,
      required this.host,
      final List<String> reactions = const [],
      this.defaultNoteVisibility = NoteVisibility.public,
      this.defaultIsLocalOnly = false,
      this.defaultReactionAcceptance = null,
      this.iCacheStrategy = CacheStrategy.whenTabChange,
      this.latestICached,
      this.emojiCacheStrategy = CacheStrategy.whenLaunch,
      this.latestEmojiCached,
      this.metaChacheStrategy = CacheStrategy.whenOneDay,
      this.latestMetaCached,
      this.forceShowAd = false})
      : _reactions = reactions,
        super._();

  factory _$_AccountSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AccountSettingsFromJson(json);

  @override
  final String userId;
  @override
  final String host;
  final List<String> _reactions;
  @override
  @JsonKey()
  List<String> get reactions {
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reactions);
  }

  @override
  @JsonKey()
  final NoteVisibility defaultNoteVisibility;
  @override
  @JsonKey()
  final bool defaultIsLocalOnly;
  @override
  @JsonKey()
  final ReactionAcceptance? defaultReactionAcceptance;
  @override
  @JsonKey()
  final CacheStrategy iCacheStrategy;
  @override
  final DateTime? latestICached;
  @override
  @JsonKey()
  final CacheStrategy emojiCacheStrategy;
  @override
  final DateTime? latestEmojiCached;
  @override
  @JsonKey()
  final CacheStrategy metaChacheStrategy;
  @override
  final DateTime? latestMetaCached;
  @override
  @JsonKey()
  final bool forceShowAd;

  @override
  String toString() {
    return 'AccountSettings(userId: $userId, host: $host, reactions: $reactions, defaultNoteVisibility: $defaultNoteVisibility, defaultIsLocalOnly: $defaultIsLocalOnly, defaultReactionAcceptance: $defaultReactionAcceptance, iCacheStrategy: $iCacheStrategy, latestICached: $latestICached, emojiCacheStrategy: $emojiCacheStrategy, latestEmojiCached: $latestEmojiCached, metaChacheStrategy: $metaChacheStrategy, latestMetaCached: $latestMetaCached, forceShowAd: $forceShowAd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountSettings &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.host, host) || other.host == host) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            (identical(other.defaultNoteVisibility, defaultNoteVisibility) ||
                other.defaultNoteVisibility == defaultNoteVisibility) &&
            (identical(other.defaultIsLocalOnly, defaultIsLocalOnly) ||
                other.defaultIsLocalOnly == defaultIsLocalOnly) &&
            (identical(other.defaultReactionAcceptance,
                    defaultReactionAcceptance) ||
                other.defaultReactionAcceptance == defaultReactionAcceptance) &&
            (identical(other.iCacheStrategy, iCacheStrategy) ||
                other.iCacheStrategy == iCacheStrategy) &&
            (identical(other.latestICached, latestICached) ||
                other.latestICached == latestICached) &&
            (identical(other.emojiCacheStrategy, emojiCacheStrategy) ||
                other.emojiCacheStrategy == emojiCacheStrategy) &&
            (identical(other.latestEmojiCached, latestEmojiCached) ||
                other.latestEmojiCached == latestEmojiCached) &&
            (identical(other.metaChacheStrategy, metaChacheStrategy) ||
                other.metaChacheStrategy == metaChacheStrategy) &&
            (identical(other.latestMetaCached, latestMetaCached) ||
                other.latestMetaCached == latestMetaCached) &&
            (identical(other.forceShowAd, forceShowAd) ||
                other.forceShowAd == forceShowAd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      host,
      const DeepCollectionEquality().hash(_reactions),
      defaultNoteVisibility,
      defaultIsLocalOnly,
      defaultReactionAcceptance,
      iCacheStrategy,
      latestICached,
      emojiCacheStrategy,
      latestEmojiCached,
      metaChacheStrategy,
      latestMetaCached,
      forceShowAd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountSettingsCopyWith<_$_AccountSettings> get copyWith =>
      __$$_AccountSettingsCopyWithImpl<_$_AccountSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountSettingsToJson(
      this,
    );
  }
}

abstract class _AccountSettings extends AccountSettings {
  const factory _AccountSettings(
      {required final String userId,
      required final String host,
      final List<String> reactions,
      final NoteVisibility defaultNoteVisibility,
      final bool defaultIsLocalOnly,
      final ReactionAcceptance? defaultReactionAcceptance,
      final CacheStrategy iCacheStrategy,
      final DateTime? latestICached,
      final CacheStrategy emojiCacheStrategy,
      final DateTime? latestEmojiCached,
      final CacheStrategy metaChacheStrategy,
      final DateTime? latestMetaCached,
      final bool forceShowAd}) = _$_AccountSettings;
  const _AccountSettings._() : super._();

  factory _AccountSettings.fromJson(Map<String, dynamic> json) =
      _$_AccountSettings.fromJson;

  @override
  String get userId;
  @override
  String get host;
  @override
  List<String> get reactions;
  @override
  NoteVisibility get defaultNoteVisibility;
  @override
  bool get defaultIsLocalOnly;
  @override
  ReactionAcceptance? get defaultReactionAcceptance;
  @override
  CacheStrategy get iCacheStrategy;
  @override
  DateTime? get latestICached;
  @override
  CacheStrategy get emojiCacheStrategy;
  @override
  DateTime? get latestEmojiCached;
  @override
  CacheStrategy get metaChacheStrategy;
  @override
  DateTime? get latestMetaCached;
  @override
  bool get forceShowAd;
  @override
  @JsonKey(ignore: true)
  _$$_AccountSettingsCopyWith<_$_AccountSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
