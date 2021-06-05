// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_diary_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListDiaryActorEventTearOff {
  const _$ListDiaryActorEventTearOff();

  _Delete delete({required List<DiaryEntry> entryList}) {
    return _Delete(
      entryList: entryList,
    );
  }
}

/// @nodoc
const $ListDiaryActorEvent = _$ListDiaryActorEventTearOff();

/// @nodoc
mixin _$ListDiaryActorEvent {
  List<DiaryEntry> get entryList => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DiaryEntry> entryList) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DiaryEntry> entryList)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListDiaryActorEventCopyWith<ListDiaryActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDiaryActorEventCopyWith<$Res> {
  factory $ListDiaryActorEventCopyWith(
          ListDiaryActorEvent value, $Res Function(ListDiaryActorEvent) then) =
      _$ListDiaryActorEventCopyWithImpl<$Res>;
  $Res call({List<DiaryEntry> entryList});
}

/// @nodoc
class _$ListDiaryActorEventCopyWithImpl<$Res>
    implements $ListDiaryActorEventCopyWith<$Res> {
  _$ListDiaryActorEventCopyWithImpl(this._value, this._then);

  final ListDiaryActorEvent _value;
  // ignore: unused_field
  final $Res Function(ListDiaryActorEvent) _then;

  @override
  $Res call({
    Object? entryList = freezed,
  }) {
    return _then(_value.copyWith(
      entryList: entryList == freezed
          ? _value.entryList
          : entryList // ignore: cast_nullable_to_non_nullable
              as List<DiaryEntry>,
    ));
  }
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res>
    implements $ListDiaryActorEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({List<DiaryEntry> entryList});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$ListDiaryActorEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object? entryList = freezed,
  }) {
    return _then(_Delete(
      entryList: entryList == freezed
          ? _value.entryList
          : entryList // ignore: cast_nullable_to_non_nullable
              as List<DiaryEntry>,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete({required this.entryList});

  @override
  final List<DiaryEntry> entryList;

  @override
  String toString() {
    return 'ListDiaryActorEvent.delete(entryList: $entryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.entryList, entryList) ||
                const DeepCollectionEquality()
                    .equals(other.entryList, entryList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entryList);

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DiaryEntry> entryList) delete,
  }) {
    return delete(entryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DiaryEntry> entryList)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(entryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ListDiaryActorEvent {
  const factory _Delete({required List<DiaryEntry> entryList}) = _$_Delete;

  @override
  List<DiaryEntry> get entryList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListDiaryActorStateTearOff {
  const _$ListDiaryActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress(DiaryLoading loading) {
    return _ActionInProgress(
      loading,
    );
  }

  _DeleteSucessful deleteSucessful(int amount) {
    return _DeleteSucessful(
      amount,
    );
  }

  _DiaryFailure diaryFailure(DiaryFailure failure) {
    return _DiaryFailure(
      failure,
    );
  }
}

/// @nodoc
const $ListDiaryActorState = _$ListDiaryActorStateTearOff();

/// @nodoc
mixin _$ListDiaryActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DiaryLoading loading) actionInProgress,
    required TResult Function(int amount) deleteSucessful,
    required TResult Function(DiaryFailure failure) diaryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DiaryLoading loading)? actionInProgress,
    TResult Function(int amount)? deleteSucessful,
    TResult Function(DiaryFailure failure)? diaryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSucessful value) deleteSucessful,
    required TResult Function(_DiaryFailure value) diaryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSucessful value)? deleteSucessful,
    TResult Function(_DiaryFailure value)? diaryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDiaryActorStateCopyWith<$Res> {
  factory $ListDiaryActorStateCopyWith(
          ListDiaryActorState value, $Res Function(ListDiaryActorState) then) =
      _$ListDiaryActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListDiaryActorStateCopyWithImpl<$Res>
    implements $ListDiaryActorStateCopyWith<$Res> {
  _$ListDiaryActorStateCopyWithImpl(this._value, this._then);

  final ListDiaryActorState _value;
  // ignore: unused_field
  final $Res Function(ListDiaryActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ListDiaryActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ListDiaryActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DiaryLoading loading) actionInProgress,
    required TResult Function(int amount) deleteSucessful,
    required TResult Function(DiaryFailure failure) diaryFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DiaryLoading loading)? actionInProgress,
    TResult Function(int amount)? deleteSucessful,
    TResult Function(DiaryFailure failure)? diaryFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSucessful value) deleteSucessful,
    required TResult Function(_DiaryFailure value) diaryFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSucessful value)? deleteSucessful,
    TResult Function(_DiaryFailure value)? diaryFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListDiaryActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
  $Res call({DiaryLoading loading});

  $DiaryLoadingCopyWith<$Res> get loading;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ListDiaryActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_ActionInProgress(
      loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as DiaryLoading,
    ));
  }

  @override
  $DiaryLoadingCopyWith<$Res> get loading {
    return $DiaryLoadingCopyWith<$Res>(_value.loading, (value) {
      return _then(_value.copyWith(loading: value));
    });
  }
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress(this.loading);

  @override
  final DiaryLoading loading;

  @override
  String toString() {
    return 'ListDiaryActorState.actionInProgress(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionInProgress &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$ActionInProgressCopyWith<_ActionInProgress> get copyWith =>
      __$ActionInProgressCopyWithImpl<_ActionInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DiaryLoading loading) actionInProgress,
    required TResult Function(int amount) deleteSucessful,
    required TResult Function(DiaryFailure failure) diaryFailure,
  }) {
    return actionInProgress(loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DiaryLoading loading)? actionInProgress,
    TResult Function(int amount)? deleteSucessful,
    TResult Function(DiaryFailure failure)? diaryFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSucessful value) deleteSucessful,
    required TResult Function(_DiaryFailure value) diaryFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSucessful value)? deleteSucessful,
    TResult Function(_DiaryFailure value)? diaryFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ListDiaryActorState {
  const factory _ActionInProgress(DiaryLoading loading) = _$_ActionInProgress;

  DiaryLoading get loading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActionInProgressCopyWith<_ActionInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSucessfulCopyWith<$Res> {
  factory _$DeleteSucessfulCopyWith(
          _DeleteSucessful value, $Res Function(_DeleteSucessful) then) =
      __$DeleteSucessfulCopyWithImpl<$Res>;
  $Res call({int amount});
}

/// @nodoc
class __$DeleteSucessfulCopyWithImpl<$Res>
    extends _$ListDiaryActorStateCopyWithImpl<$Res>
    implements _$DeleteSucessfulCopyWith<$Res> {
  __$DeleteSucessfulCopyWithImpl(
      _DeleteSucessful _value, $Res Function(_DeleteSucessful) _then)
      : super(_value, (v) => _then(v as _DeleteSucessful));

  @override
  _DeleteSucessful get _value => super._value as _DeleteSucessful;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_DeleteSucessful(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteSucessful implements _DeleteSucessful {
  const _$_DeleteSucessful(this.amount);

  @override
  final int amount;

  @override
  String toString() {
    return 'ListDiaryActorState.deleteSucessful(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteSucessful &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$DeleteSucessfulCopyWith<_DeleteSucessful> get copyWith =>
      __$DeleteSucessfulCopyWithImpl<_DeleteSucessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DiaryLoading loading) actionInProgress,
    required TResult Function(int amount) deleteSucessful,
    required TResult Function(DiaryFailure failure) diaryFailure,
  }) {
    return deleteSucessful(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DiaryLoading loading)? actionInProgress,
    TResult Function(int amount)? deleteSucessful,
    TResult Function(DiaryFailure failure)? diaryFailure,
    required TResult orElse(),
  }) {
    if (deleteSucessful != null) {
      return deleteSucessful(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSucessful value) deleteSucessful,
    required TResult Function(_DiaryFailure value) diaryFailure,
  }) {
    return deleteSucessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSucessful value)? deleteSucessful,
    TResult Function(_DiaryFailure value)? diaryFailure,
    required TResult orElse(),
  }) {
    if (deleteSucessful != null) {
      return deleteSucessful(this);
    }
    return orElse();
  }
}

abstract class _DeleteSucessful implements ListDiaryActorState {
  const factory _DeleteSucessful(int amount) = _$_DeleteSucessful;

  int get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteSucessfulCopyWith<_DeleteSucessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DiaryFailureCopyWith<$Res> {
  factory _$DiaryFailureCopyWith(
          _DiaryFailure value, $Res Function(_DiaryFailure) then) =
      __$DiaryFailureCopyWithImpl<$Res>;
  $Res call({DiaryFailure failure});

  $DiaryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$DiaryFailureCopyWithImpl<$Res>
    extends _$ListDiaryActorStateCopyWithImpl<$Res>
    implements _$DiaryFailureCopyWith<$Res> {
  __$DiaryFailureCopyWithImpl(
      _DiaryFailure _value, $Res Function(_DiaryFailure) _then)
      : super(_value, (v) => _then(v as _DiaryFailure));

  @override
  _DiaryFailure get _value => super._value as _DiaryFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_DiaryFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DiaryFailure,
    ));
  }

  @override
  $DiaryFailureCopyWith<$Res> get failure {
    return $DiaryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_DiaryFailure implements _DiaryFailure {
  const _$_DiaryFailure(this.failure);

  @override
  final DiaryFailure failure;

  @override
  String toString() {
    return 'ListDiaryActorState.diaryFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiaryFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$DiaryFailureCopyWith<_DiaryFailure> get copyWith =>
      __$DiaryFailureCopyWithImpl<_DiaryFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DiaryLoading loading) actionInProgress,
    required TResult Function(int amount) deleteSucessful,
    required TResult Function(DiaryFailure failure) diaryFailure,
  }) {
    return diaryFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DiaryLoading loading)? actionInProgress,
    TResult Function(int amount)? deleteSucessful,
    TResult Function(DiaryFailure failure)? diaryFailure,
    required TResult orElse(),
  }) {
    if (diaryFailure != null) {
      return diaryFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSucessful value) deleteSucessful,
    required TResult Function(_DiaryFailure value) diaryFailure,
  }) {
    return diaryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSucessful value)? deleteSucessful,
    TResult Function(_DiaryFailure value)? diaryFailure,
    required TResult orElse(),
  }) {
    if (diaryFailure != null) {
      return diaryFailure(this);
    }
    return orElse();
  }
}

abstract class _DiaryFailure implements ListDiaryActorState {
  const factory _DiaryFailure(DiaryFailure failure) = _$_DiaryFailure;

  DiaryFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DiaryFailureCopyWith<_DiaryFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
