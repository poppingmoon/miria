// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_search_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteSearchCondition {
  String get query => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  CommunityChannel? get channel => throw _privateConstructorUsedError;
  bool get localOnly => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteSearchConditionCopyWith<NoteSearchCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteSearchConditionCopyWith<$Res> {
  factory $NoteSearchConditionCopyWith(
          NoteSearchCondition value, $Res Function(NoteSearchCondition) then) =
      _$NoteSearchConditionCopyWithImpl<$Res, NoteSearchCondition>;
  @useResult
  $Res call(
      {String query, User? user, CommunityChannel? channel, bool localOnly});

  $UserCopyWith<$Res>? get user;
  $CommunityChannelCopyWith<$Res>? get channel;
}

/// @nodoc
class _$NoteSearchConditionCopyWithImpl<$Res, $Val extends NoteSearchCondition>
    implements $NoteSearchConditionCopyWith<$Res> {
  _$NoteSearchConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? user = freezed,
    Object? channel = freezed,
    Object? localOnly = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as CommunityChannel?,
      localOnly: null == localOnly
          ? _value.localOnly
          : localOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunityChannelCopyWith<$Res>? get channel {
    if (_value.channel == null) {
      return null;
    }

    return $CommunityChannelCopyWith<$Res>(_value.channel!, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NoteSearchConditionCopyWith<$Res>
    implements $NoteSearchConditionCopyWith<$Res> {
  factory _$$_NoteSearchConditionCopyWith(_$_NoteSearchCondition value,
          $Res Function(_$_NoteSearchCondition) then) =
      __$$_NoteSearchConditionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query, User? user, CommunityChannel? channel, bool localOnly});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CommunityChannelCopyWith<$Res>? get channel;
}

/// @nodoc
class __$$_NoteSearchConditionCopyWithImpl<$Res>
    extends _$NoteSearchConditionCopyWithImpl<$Res, _$_NoteSearchCondition>
    implements _$$_NoteSearchConditionCopyWith<$Res> {
  __$$_NoteSearchConditionCopyWithImpl(_$_NoteSearchCondition _value,
      $Res Function(_$_NoteSearchCondition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? user = freezed,
    Object? channel = freezed,
    Object? localOnly = null,
  }) {
    return _then(_$_NoteSearchCondition(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as CommunityChannel?,
      localOnly: null == localOnly
          ? _value.localOnly
          : localOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoteSearchCondition extends _NoteSearchCondition {
  const _$_NoteSearchCondition(
      {this.query = "", this.user, this.channel, this.localOnly = false})
      : super._();

  @override
  @JsonKey()
  final String query;
  @override
  final User? user;
  @override
  final CommunityChannel? channel;
  @override
  @JsonKey()
  final bool localOnly;

  @override
  String toString() {
    return 'NoteSearchCondition(query: $query, user: $user, channel: $channel, localOnly: $localOnly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteSearchCondition &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.localOnly, localOnly) ||
                other.localOnly == localOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, user, channel, localOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteSearchConditionCopyWith<_$_NoteSearchCondition> get copyWith =>
      __$$_NoteSearchConditionCopyWithImpl<_$_NoteSearchCondition>(
          this, _$identity);
}

abstract class _NoteSearchCondition extends NoteSearchCondition {
  const factory _NoteSearchCondition(
      {final String query,
      final User? user,
      final CommunityChannel? channel,
      final bool localOnly}) = _$_NoteSearchCondition;
  const _NoteSearchCondition._() : super._();

  @override
  String get query;
  @override
  User? get user;
  @override
  CommunityChannel? get channel;
  @override
  bool get localOnly;
  @override
  @JsonKey(ignore: true)
  _$$_NoteSearchConditionCopyWith<_$_NoteSearchCondition> get copyWith =>
      throw _privateConstructorUsedError;
}
