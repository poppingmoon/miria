// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summaly_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SummalyResult _$SummalyResultFromJson(Map<String, dynamic> json) {
  return _SummalyResult.fromJson(json);
}

/// @nodoc
mixin _$SummalyResult {
  String? get title => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  Player get player => throw _privateConstructorUsedError;
  String? get sitename => throw _privateConstructorUsedError;
  bool? get sensitive => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummalyResultCopyWith<SummalyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummalyResultCopyWith<$Res> {
  factory $SummalyResultCopyWith(
          SummalyResult value, $Res Function(SummalyResult) then) =
      _$SummalyResultCopyWithImpl<$Res, SummalyResult>;
  @useResult
  $Res call(
      {String? title,
      String? icon,
      String? description,
      String? thumbnail,
      Player player,
      String? sitename,
      bool? sensitive,
      String? url});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$SummalyResultCopyWithImpl<$Res, $Val extends SummalyResult>
    implements $SummalyResultCopyWith<$Res> {
  _$SummalyResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? icon = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? player = null,
    Object? sitename = freezed,
    Object? sensitive = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      sitename: freezed == sitename
          ? _value.sitename
          : sitename // ignore: cast_nullable_to_non_nullable
              as String?,
      sensitive: freezed == sensitive
          ? _value.sensitive
          : sensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SummalyResultCopyWith<$Res>
    implements $SummalyResultCopyWith<$Res> {
  factory _$$_SummalyResultCopyWith(
          _$_SummalyResult value, $Res Function(_$_SummalyResult) then) =
      __$$_SummalyResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? icon,
      String? description,
      String? thumbnail,
      Player player,
      String? sitename,
      bool? sensitive,
      String? url});

  @override
  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$_SummalyResultCopyWithImpl<$Res>
    extends _$SummalyResultCopyWithImpl<$Res, _$_SummalyResult>
    implements _$$_SummalyResultCopyWith<$Res> {
  __$$_SummalyResultCopyWithImpl(
      _$_SummalyResult _value, $Res Function(_$_SummalyResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? icon = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? player = null,
    Object? sitename = freezed,
    Object? sensitive = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_SummalyResult(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      sitename: freezed == sitename
          ? _value.sitename
          : sitename // ignore: cast_nullable_to_non_nullable
              as String?,
      sensitive: freezed == sensitive
          ? _value.sensitive
          : sensitive // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SummalyResult implements _SummalyResult {
  const _$_SummalyResult(
      {this.title,
      this.icon,
      this.description,
      this.thumbnail,
      required this.player,
      this.sitename,
      this.sensitive,
      this.url});

  factory _$_SummalyResult.fromJson(Map<String, dynamic> json) =>
      _$$_SummalyResultFromJson(json);

  @override
  final String? title;
  @override
  final String? icon;
  @override
  final String? description;
  @override
  final String? thumbnail;
  @override
  final Player player;
  @override
  final String? sitename;
  @override
  final bool? sensitive;
  @override
  final String? url;

  @override
  String toString() {
    return 'SummalyResult(title: $title, icon: $icon, description: $description, thumbnail: $thumbnail, player: $player, sitename: $sitename, sensitive: $sensitive, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummalyResult &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.sitename, sitename) ||
                other.sitename == sitename) &&
            (identical(other.sensitive, sensitive) ||
                other.sensitive == sensitive) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, icon, description,
      thumbnail, player, sitename, sensitive, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummalyResultCopyWith<_$_SummalyResult> get copyWith =>
      __$$_SummalyResultCopyWithImpl<_$_SummalyResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummalyResultToJson(
      this,
    );
  }
}

abstract class _SummalyResult implements SummalyResult {
  const factory _SummalyResult(
      {final String? title,
      final String? icon,
      final String? description,
      final String? thumbnail,
      required final Player player,
      final String? sitename,
      final bool? sensitive,
      final String? url}) = _$_SummalyResult;

  factory _SummalyResult.fromJson(Map<String, dynamic> json) =
      _$_SummalyResult.fromJson;

  @override
  String? get title;
  @override
  String? get icon;
  @override
  String? get description;
  @override
  String? get thumbnail;
  @override
  Player get player;
  @override
  String? get sitename;
  @override
  bool? get sensitive;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_SummalyResultCopyWith<_$_SummalyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  List<String>? get allow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call({String? url, int? width, int? height, List<String>? allow});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? allow = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      allow: freezed == allow
          ? _value.allow
          : allow // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$_PlayerCopyWith(_$_Player value, $Res Function(_$_Player) then) =
      __$$_PlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, int? width, int? height, List<String>? allow});
}

/// @nodoc
class __$$_PlayerCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$_Player>
    implements _$$_PlayerCopyWith<$Res> {
  __$$_PlayerCopyWithImpl(_$_Player _value, $Res Function(_$_Player) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? allow = freezed,
  }) {
    return _then(_$_Player(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      allow: freezed == allow
          ? _value._allow
          : allow // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Player implements _Player {
  const _$_Player(
      {this.url, this.width, this.height, final List<String>? allow})
      : _allow = allow;

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerFromJson(json);

  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;
  final List<String>? _allow;
  @override
  List<String>? get allow {
    final value = _allow;
    if (value == null) return null;
    if (_allow is EqualUnmodifiableListView) return _allow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Player(url: $url, width: $width, height: $height, allow: $allow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Player &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._allow, _allow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, width, height,
      const DeepCollectionEquality().hash(_allow));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      __$$_PlayerCopyWithImpl<_$_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player(
      {final String? url,
      final int? width,
      final int? height,
      final List<String>? allow}) = _$_Player;

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  List<String>? get allow;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      throw _privateConstructorUsedError;
}
