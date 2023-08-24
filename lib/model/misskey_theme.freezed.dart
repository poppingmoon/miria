// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misskey_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MisskeyTheme _$MisskeyThemeFromJson(Map<String, dynamic> json) {
  return _MisskeyTheme.fromJson(json);
}

/// @nodoc
mixin _$MisskeyTheme {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get base => throw _privateConstructorUsedError;
  Map<String, String> get props => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MisskeyThemeCopyWith<MisskeyTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MisskeyThemeCopyWith<$Res> {
  factory $MisskeyThemeCopyWith(
          MisskeyTheme value, $Res Function(MisskeyTheme) then) =
      _$MisskeyThemeCopyWithImpl<$Res, MisskeyTheme>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? author,
      String? desc,
      String? base,
      Map<String, String> props});
}

/// @nodoc
class _$MisskeyThemeCopyWithImpl<$Res, $Val extends MisskeyTheme>
    implements $MisskeyThemeCopyWith<$Res> {
  _$MisskeyThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? author = freezed,
    Object? desc = freezed,
    Object? base = freezed,
    Object? props = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      props: null == props
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MisskeyThemeCopyWith<$Res>
    implements $MisskeyThemeCopyWith<$Res> {
  factory _$$_MisskeyThemeCopyWith(
          _$_MisskeyTheme value, $Res Function(_$_MisskeyTheme) then) =
      __$$_MisskeyThemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? author,
      String? desc,
      String? base,
      Map<String, String> props});
}

/// @nodoc
class __$$_MisskeyThemeCopyWithImpl<$Res>
    extends _$MisskeyThemeCopyWithImpl<$Res, _$_MisskeyTheme>
    implements _$$_MisskeyThemeCopyWith<$Res> {
  __$$_MisskeyThemeCopyWithImpl(
      _$_MisskeyTheme _value, $Res Function(_$_MisskeyTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? author = freezed,
    Object? desc = freezed,
    Object? base = freezed,
    Object? props = null,
  }) {
    return _then(_$_MisskeyTheme(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      props: null == props
          ? _value._props
          : props // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MisskeyTheme implements _MisskeyTheme {
  const _$_MisskeyTheme(
      {required this.id,
      required this.name,
      this.author,
      this.desc,
      this.base,
      required final Map<String, String> props})
      : _props = props;

  factory _$_MisskeyTheme.fromJson(Map<String, dynamic> json) =>
      _$$_MisskeyThemeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? author;
  @override
  final String? desc;
  @override
  final String? base;
  final Map<String, String> _props;
  @override
  Map<String, String> get props {
    if (_props is EqualUnmodifiableMapView) return _props;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_props);
  }

  @override
  String toString() {
    return 'MisskeyTheme(id: $id, name: $name, author: $author, desc: $desc, base: $base, props: $props)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MisskeyTheme &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.base, base) || other.base == base) &&
            const DeepCollectionEquality().equals(other._props, _props));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, author, desc, base,
      const DeepCollectionEquality().hash(_props));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MisskeyThemeCopyWith<_$_MisskeyTheme> get copyWith =>
      __$$_MisskeyThemeCopyWithImpl<_$_MisskeyTheme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MisskeyThemeToJson(
      this,
    );
  }
}

abstract class _MisskeyTheme implements MisskeyTheme {
  const factory _MisskeyTheme(
      {required final String id,
      required final String name,
      final String? author,
      final String? desc,
      final String? base,
      required final Map<String, String> props}) = _$_MisskeyTheme;

  factory _MisskeyTheme.fromJson(Map<String, dynamic> json) =
      _$_MisskeyTheme.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get author;
  @override
  String? get desc;
  @override
  String? get base;
  @override
  Map<String, String> get props;
  @override
  @JsonKey(ignore: true)
  _$$_MisskeyThemeCopyWith<_$_MisskeyTheme> get copyWith =>
      throw _privateConstructorUsedError;
}
