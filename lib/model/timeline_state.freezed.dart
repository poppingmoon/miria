// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimelineState {
  List<Note> get newerNotes => throw _privateConstructorUsedError;
  List<Note> get olderNotes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDownDirectionLoading => throw _privateConstructorUsedError;
  bool get isLastLoaded => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimelineStateCopyWith<TimelineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineStateCopyWith<$Res> {
  factory $TimelineStateCopyWith(
          TimelineState value, $Res Function(TimelineState) then) =
      _$TimelineStateCopyWithImpl<$Res, TimelineState>;
  @useResult
  $Res call(
      {List<Note> newerNotes,
      List<Note> olderNotes,
      bool isLoading,
      bool isDownDirectionLoading,
      bool isLastLoaded,
      Object? error});
}

/// @nodoc
class _$TimelineStateCopyWithImpl<$Res, $Val extends TimelineState>
    implements $TimelineStateCopyWith<$Res> {
  _$TimelineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newerNotes = null,
    Object? olderNotes = null,
    Object? isLoading = null,
    Object? isDownDirectionLoading = null,
    Object? isLastLoaded = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      newerNotes: null == newerNotes
          ? _value.newerNotes
          : newerNotes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      olderNotes: null == olderNotes
          ? _value.olderNotes
          : olderNotes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownDirectionLoading: null == isDownDirectionLoading
          ? _value.isDownDirectionLoading
          : isDownDirectionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastLoaded: null == isLastLoaded
          ? _value.isLastLoaded
          : isLastLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimelineStateCopyWith<$Res>
    implements $TimelineStateCopyWith<$Res> {
  factory _$$_TimelineStateCopyWith(
          _$_TimelineState value, $Res Function(_$_TimelineState) then) =
      __$$_TimelineStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Note> newerNotes,
      List<Note> olderNotes,
      bool isLoading,
      bool isDownDirectionLoading,
      bool isLastLoaded,
      Object? error});
}

/// @nodoc
class __$$_TimelineStateCopyWithImpl<$Res>
    extends _$TimelineStateCopyWithImpl<$Res, _$_TimelineState>
    implements _$$_TimelineStateCopyWith<$Res> {
  __$$_TimelineStateCopyWithImpl(
      _$_TimelineState _value, $Res Function(_$_TimelineState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newerNotes = null,
    Object? olderNotes = null,
    Object? isLoading = null,
    Object? isDownDirectionLoading = null,
    Object? isLastLoaded = null,
    Object? error = freezed,
  }) {
    return _then(_$_TimelineState(
      newerNotes: null == newerNotes
          ? _value._newerNotes
          : newerNotes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      olderNotes: null == olderNotes
          ? _value._olderNotes
          : olderNotes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownDirectionLoading: null == isDownDirectionLoading
          ? _value.isDownDirectionLoading
          : isDownDirectionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastLoaded: null == isLastLoaded
          ? _value.isLastLoaded
          : isLastLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_TimelineState extends _TimelineState {
  const _$_TimelineState(
      {final List<Note> newerNotes = const <Note>[],
      final List<Note> olderNotes = const <Note>[],
      this.isLoading = false,
      this.isDownDirectionLoading = false,
      this.isLastLoaded = false,
      this.error})
      : _newerNotes = newerNotes,
        _olderNotes = olderNotes,
        super._();

  final List<Note> _newerNotes;
  @override
  @JsonKey()
  List<Note> get newerNotes {
    if (_newerNotes is EqualUnmodifiableListView) return _newerNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newerNotes);
  }

  final List<Note> _olderNotes;
  @override
  @JsonKey()
  List<Note> get olderNotes {
    if (_olderNotes is EqualUnmodifiableListView) return _olderNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_olderNotes);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDownDirectionLoading;
  @override
  @JsonKey()
  final bool isLastLoaded;
  @override
  final Object? error;

  @override
  String toString() {
    return 'TimelineState(newerNotes: $newerNotes, olderNotes: $olderNotes, isLoading: $isLoading, isDownDirectionLoading: $isDownDirectionLoading, isLastLoaded: $isLastLoaded, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimelineState &&
            const DeepCollectionEquality()
                .equals(other._newerNotes, _newerNotes) &&
            const DeepCollectionEquality()
                .equals(other._olderNotes, _olderNotes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDownDirectionLoading, isDownDirectionLoading) ||
                other.isDownDirectionLoading == isDownDirectionLoading) &&
            (identical(other.isLastLoaded, isLastLoaded) ||
                other.isLastLoaded == isLastLoaded) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newerNotes),
      const DeepCollectionEquality().hash(_olderNotes),
      isLoading,
      isDownDirectionLoading,
      isLastLoaded,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimelineStateCopyWith<_$_TimelineState> get copyWith =>
      __$$_TimelineStateCopyWithImpl<_$_TimelineState>(this, _$identity);
}

abstract class _TimelineState extends TimelineState {
  const factory _TimelineState(
      {final List<Note> newerNotes,
      final List<Note> olderNotes,
      final bool isLoading,
      final bool isDownDirectionLoading,
      final bool isLastLoaded,
      final Object? error}) = _$_TimelineState;
  const _TimelineState._() : super._();

  @override
  List<Note> get newerNotes;
  @override
  List<Note> get olderNotes;
  @override
  bool get isLoading;
  @override
  bool get isDownDirectionLoading;
  @override
  bool get isLastLoaded;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_TimelineStateCopyWith<_$_TimelineState> get copyWith =>
      throw _privateConstructorUsedError;
}
