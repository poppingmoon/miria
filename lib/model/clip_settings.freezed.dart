// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClipSettings {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClipSettingsCopyWith<ClipSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipSettingsCopyWith<$Res> {
  factory $ClipSettingsCopyWith(
          ClipSettings value, $Res Function(ClipSettings) then) =
      _$ClipSettingsCopyWithImpl<$Res, ClipSettings>;
  @useResult
  $Res call({String name, String? description, bool isPublic});
}

/// @nodoc
class _$ClipSettingsCopyWithImpl<$Res, $Val extends ClipSettings>
    implements $ClipSettingsCopyWith<$Res> {
  _$ClipSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? isPublic = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClipSettingsCopyWith<$Res>
    implements $ClipSettingsCopyWith<$Res> {
  factory _$$_ClipSettingsCopyWith(
          _$_ClipSettings value, $Res Function(_$_ClipSettings) then) =
      __$$_ClipSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description, bool isPublic});
}

/// @nodoc
class __$$_ClipSettingsCopyWithImpl<$Res>
    extends _$ClipSettingsCopyWithImpl<$Res, _$_ClipSettings>
    implements _$$_ClipSettingsCopyWith<$Res> {
  __$$_ClipSettingsCopyWithImpl(
      _$_ClipSettings _value, $Res Function(_$_ClipSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? isPublic = null,
  }) {
    return _then(_$_ClipSettings(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClipSettings extends _ClipSettings {
  const _$_ClipSettings(
      {this.name = "", this.description, this.isPublic = false})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isPublic;

  @override
  String toString() {
    return 'ClipSettings(name: $name, description: $description, isPublic: $isPublic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClipSettings &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, isPublic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClipSettingsCopyWith<_$_ClipSettings> get copyWith =>
      __$$_ClipSettingsCopyWithImpl<_$_ClipSettings>(this, _$identity);
}

abstract class _ClipSettings extends ClipSettings {
  const factory _ClipSettings(
      {final String name,
      final String? description,
      final bool isPublic}) = _$_ClipSettings;
  const _ClipSettings._() : super._();

  @override
  String get name;
  @override
  String? get description;
  @override
  bool get isPublic;
  @override
  @JsonKey(ignore: true)
  _$$_ClipSettingsCopyWith<_$_ClipSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
