// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_mission_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectMissionState {
  List<MissionEntity> get missions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MissionEntity> missions) idle,
    required TResult Function(List<MissionEntity> missions) loading,
    required TResult Function(List<MissionEntity> missions) loaded,
    required TResult Function(List<MissionEntity> missions, Object? error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MissionEntity> missions)? idle,
    TResult? Function(List<MissionEntity> missions)? loading,
    TResult? Function(List<MissionEntity> missions)? loaded,
    TResult? Function(List<MissionEntity> missions, Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MissionEntity> missions)? idle,
    TResult Function(List<MissionEntity> missions)? loading,
    TResult Function(List<MissionEntity> missions)? loaded,
    TResult Function(List<MissionEntity> missions, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectMissionStateCopyWith<SelectMissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectMissionStateCopyWith<$Res> {
  factory $SelectMissionStateCopyWith(
          SelectMissionState value, $Res Function(SelectMissionState) then) =
      _$SelectMissionStateCopyWithImpl<$Res, SelectMissionState>;
  @useResult
  $Res call({List<MissionEntity> missions});
}

/// @nodoc
class _$SelectMissionStateCopyWithImpl<$Res, $Val extends SelectMissionState>
    implements $SelectMissionStateCopyWith<$Res> {
  _$SelectMissionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missions = null,
  }) {
    return _then(_value.copyWith(
      missions: null == missions
          ? _value.missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<MissionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res>
    implements $SelectMissionStateCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MissionEntity> missions});
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$SelectMissionStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missions = null,
  }) {
    return _then(_$IdleImpl(
      missions: null == missions
          ? _value._missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<MissionEntity>,
    ));
  }
}

/// @nodoc

class _$IdleImpl extends _Idle {
  const _$IdleImpl(
      {final List<MissionEntity> missions = const <MissionEntity>[]})
      : _missions = missions,
        super._();

  final List<MissionEntity> _missions;
  @override
  @JsonKey()
  List<MissionEntity> get missions {
    if (_missions is EqualUnmodifiableListView) return _missions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missions);
  }

  @override
  String toString() {
    return 'SelectMissionState.idle(missions: $missions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            const DeepCollectionEquality().equals(other._missions, _missions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_missions));

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MissionEntity> missions) idle,
    required TResult Function(List<MissionEntity> missions) loading,
    required TResult Function(List<MissionEntity> missions) loaded,
    required TResult Function(List<MissionEntity> missions, Object? error)
        error,
  }) {
    return idle(missions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MissionEntity> missions)? idle,
    TResult? Function(List<MissionEntity> missions)? loading,
    TResult? Function(List<MissionEntity> missions)? loaded,
    TResult? Function(List<MissionEntity> missions, Object? error)? error,
  }) {
    return idle?.call(missions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MissionEntity> missions)? idle,
    TResult Function(List<MissionEntity> missions)? loading,
    TResult Function(List<MissionEntity> missions)? loaded,
    TResult Function(List<MissionEntity> missions, Object? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(missions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle extends SelectMissionState {
  const factory _Idle({final List<MissionEntity> missions}) = _$IdleImpl;
  const _Idle._() : super._();

  @override
  List<MissionEntity> get missions;

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $SelectMissionStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MissionEntity> missions});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SelectMissionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missions = null,
  }) {
    return _then(_$LoadingImpl(
      missions: null == missions
          ? _value._missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<MissionEntity>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl(
      {final List<MissionEntity> missions = const <MissionEntity>[]})
      : _missions = missions,
        super._();

  final List<MissionEntity> _missions;
  @override
  @JsonKey()
  List<MissionEntity> get missions {
    if (_missions is EqualUnmodifiableListView) return _missions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missions);
  }

  @override
  String toString() {
    return 'SelectMissionState.loading(missions: $missions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._missions, _missions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_missions));

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MissionEntity> missions) idle,
    required TResult Function(List<MissionEntity> missions) loading,
    required TResult Function(List<MissionEntity> missions) loaded,
    required TResult Function(List<MissionEntity> missions, Object? error)
        error,
  }) {
    return loading(missions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MissionEntity> missions)? idle,
    TResult? Function(List<MissionEntity> missions)? loading,
    TResult? Function(List<MissionEntity> missions)? loaded,
    TResult? Function(List<MissionEntity> missions, Object? error)? error,
  }) {
    return loading?.call(missions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MissionEntity> missions)? idle,
    TResult Function(List<MissionEntity> missions)? loading,
    TResult Function(List<MissionEntity> missions)? loaded,
    TResult Function(List<MissionEntity> missions, Object? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(missions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends SelectMissionState {
  const factory _Loading({final List<MissionEntity> missions}) = _$LoadingImpl;
  const _Loading._() : super._();

  @override
  List<MissionEntity> get missions;

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $SelectMissionStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MissionEntity> missions});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SelectMissionStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missions = null,
  }) {
    return _then(_$LoadedImpl(
      missions: null == missions
          ? _value._missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<MissionEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl({required final List<MissionEntity> missions})
      : _missions = missions,
        super._();

  final List<MissionEntity> _missions;
  @override
  List<MissionEntity> get missions {
    if (_missions is EqualUnmodifiableListView) return _missions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missions);
  }

  @override
  String toString() {
    return 'SelectMissionState.loaded(missions: $missions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._missions, _missions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_missions));

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MissionEntity> missions) idle,
    required TResult Function(List<MissionEntity> missions) loading,
    required TResult Function(List<MissionEntity> missions) loaded,
    required TResult Function(List<MissionEntity> missions, Object? error)
        error,
  }) {
    return loaded(missions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MissionEntity> missions)? idle,
    TResult? Function(List<MissionEntity> missions)? loading,
    TResult? Function(List<MissionEntity> missions)? loaded,
    TResult? Function(List<MissionEntity> missions, Object? error)? error,
  }) {
    return loaded?.call(missions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MissionEntity> missions)? idle,
    TResult Function(List<MissionEntity> missions)? loading,
    TResult Function(List<MissionEntity> missions)? loaded,
    TResult Function(List<MissionEntity> missions, Object? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(missions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends SelectMissionState {
  const factory _Loaded({required final List<MissionEntity> missions}) =
      _$LoadedImpl;
  const _Loaded._() : super._();

  @override
  List<MissionEntity> get missions;

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $SelectMissionStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MissionEntity> missions, Object? error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SelectMissionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missions = null,
    Object? error = freezed,
  }) {
    return _then(_$ErrorImpl(
      missions: null == missions
          ? _value._missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<MissionEntity>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(
      {final List<MissionEntity> missions = const <MissionEntity>[],
      this.error})
      : _missions = missions,
        super._();

  final List<MissionEntity> _missions;
  @override
  @JsonKey()
  List<MissionEntity> get missions {
    if (_missions is EqualUnmodifiableListView) return _missions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missions);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'SelectMissionState.error(missions: $missions, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other._missions, _missions) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_missions),
      const DeepCollectionEquality().hash(error));

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MissionEntity> missions) idle,
    required TResult Function(List<MissionEntity> missions) loading,
    required TResult Function(List<MissionEntity> missions) loaded,
    required TResult Function(List<MissionEntity> missions, Object? error)
        error,
  }) {
    return error(missions, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MissionEntity> missions)? idle,
    TResult? Function(List<MissionEntity> missions)? loading,
    TResult? Function(List<MissionEntity> missions)? loaded,
    TResult? Function(List<MissionEntity> missions, Object? error)? error,
  }) {
    return error?.call(missions, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MissionEntity> missions)? idle,
    TResult Function(List<MissionEntity> missions)? loading,
    TResult Function(List<MissionEntity> missions)? loaded,
    TResult Function(List<MissionEntity> missions, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(missions, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends SelectMissionState {
  const factory _Error(
      {final List<MissionEntity> missions, final Object? error}) = _$ErrorImpl;
  const _Error._() : super._();

  @override
  List<MissionEntity> get missions;
  Object? get error;

  /// Create a copy of SelectMissionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectMissionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMissions value) fetchMissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMissions value)? fetchMissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMissions value)? fetchMissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectMissionsEventCopyWith<$Res> {
  factory $SelectMissionsEventCopyWith(
          SelectMissionsEvent value, $Res Function(SelectMissionsEvent) then) =
      _$SelectMissionsEventCopyWithImpl<$Res, SelectMissionsEvent>;
}

/// @nodoc
class _$SelectMissionsEventCopyWithImpl<$Res, $Val extends SelectMissionsEvent>
    implements $SelectMissionsEventCopyWith<$Res> {
  _$SelectMissionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectMissionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchMissionsImplCopyWith<$Res> {
  factory _$$FetchMissionsImplCopyWith(
          _$FetchMissionsImpl value, $Res Function(_$FetchMissionsImpl) then) =
      __$$FetchMissionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMissionsImplCopyWithImpl<$Res>
    extends _$SelectMissionsEventCopyWithImpl<$Res, _$FetchMissionsImpl>
    implements _$$FetchMissionsImplCopyWith<$Res> {
  __$$FetchMissionsImplCopyWithImpl(
      _$FetchMissionsImpl _value, $Res Function(_$FetchMissionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectMissionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchMissionsImpl implements _FetchMissions {
  const _$FetchMissionsImpl();

  @override
  String toString() {
    return 'SelectMissionsEvent.fetchMissions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMissionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMissions,
  }) {
    return fetchMissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMissions,
  }) {
    return fetchMissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMissions,
    required TResult orElse(),
  }) {
    if (fetchMissions != null) {
      return fetchMissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMissions value) fetchMissions,
  }) {
    return fetchMissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMissions value)? fetchMissions,
  }) {
    return fetchMissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMissions value)? fetchMissions,
    required TResult orElse(),
  }) {
    if (fetchMissions != null) {
      return fetchMissions(this);
    }
    return orElse();
  }
}

abstract class _FetchMissions implements SelectMissionsEvent {
  const factory _FetchMissions() = _$FetchMissionsImpl;
}
