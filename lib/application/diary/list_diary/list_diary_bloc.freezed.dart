// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_diary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListDiaryEventTearOff {
  const _$ListDiaryEventTearOff();

  _WatchAll watchAll(IMentionable? mentionable) {
    return _WatchAll(
      mentionable,
    );
  }

  _DiaryEntriesReceived diaryEntriesReceived(
      Either<DiaryFailure, List<DiaryEntry>> entriesEither) {
    return _DiaryEntriesReceived(
      entriesEither,
    );
  }
}

/// @nodoc
const $ListDiaryEvent = _$ListDiaryEventTearOff();

/// @nodoc
mixin _$ListDiaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IMentionable? mentionable) watchAll,
    required TResult Function(
            Either<DiaryFailure, List<DiaryEntry>> entriesEither)
        diaryEntriesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_DiaryEntriesReceived value) diaryEntriesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDiaryEventCopyWith<$Res> {
  factory $ListDiaryEventCopyWith(
          ListDiaryEvent value, $Res Function(ListDiaryEvent) then) =
      _$ListDiaryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListDiaryEventCopyWithImpl<$Res>
    implements $ListDiaryEventCopyWith<$Res> {
  _$ListDiaryEventCopyWithImpl(this._value, this._then);

  final ListDiaryEvent _value;
  // ignore: unused_field
  final $Res Function(ListDiaryEvent) _then;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
  $Res call({IMentionable? mentionable});
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res> extends _$ListDiaryEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;

  @override
  $Res call({
    Object? mentionable = freezed,
  }) {
    return _then(_WatchAll(
      mentionable == freezed
          ? _value.mentionable
          : mentionable // ignore: cast_nullable_to_non_nullable
              as IMentionable?,
    ));
  }
}

/// @nodoc

class _$_WatchAll implements _WatchAll {
  const _$_WatchAll(this.mentionable);

  @override
  final IMentionable? mentionable;

  @override
  String toString() {
    return 'ListDiaryEvent.watchAll(mentionable: $mentionable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAll &&
            (identical(other.mentionable, mentionable) ||
                const DeepCollectionEquality()
                    .equals(other.mentionable, mentionable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mentionable);

  @JsonKey(ignore: true)
  @override
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      __$WatchAllCopyWithImpl<_WatchAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IMentionable? mentionable) watchAll,
    required TResult Function(
            Either<DiaryFailure, List<DiaryEntry>> entriesEither)
        diaryEntriesReceived,
  }) {
    return watchAll(mentionable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(mentionable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_DiaryEntriesReceived value) diaryEntriesReceived,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements ListDiaryEvent {
  const factory _WatchAll(IMentionable? mentionable) = _$_WatchAll;

  IMentionable? get mentionable => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DiaryEntriesReceivedCopyWith<$Res> {
  factory _$DiaryEntriesReceivedCopyWith(_DiaryEntriesReceived value,
          $Res Function(_DiaryEntriesReceived) then) =
      __$DiaryEntriesReceivedCopyWithImpl<$Res>;
  $Res call({Either<DiaryFailure, List<DiaryEntry>> entriesEither});
}

/// @nodoc
class __$DiaryEntriesReceivedCopyWithImpl<$Res>
    extends _$ListDiaryEventCopyWithImpl<$Res>
    implements _$DiaryEntriesReceivedCopyWith<$Res> {
  __$DiaryEntriesReceivedCopyWithImpl(
      _DiaryEntriesReceived _value, $Res Function(_DiaryEntriesReceived) _then)
      : super(_value, (v) => _then(v as _DiaryEntriesReceived));

  @override
  _DiaryEntriesReceived get _value => super._value as _DiaryEntriesReceived;

  @override
  $Res call({
    Object? entriesEither = freezed,
  }) {
    return _then(_DiaryEntriesReceived(
      entriesEither == freezed
          ? _value.entriesEither
          : entriesEither // ignore: cast_nullable_to_non_nullable
              as Either<DiaryFailure, List<DiaryEntry>>,
    ));
  }
}

/// @nodoc

class _$_DiaryEntriesReceived implements _DiaryEntriesReceived {
  const _$_DiaryEntriesReceived(this.entriesEither);

  @override
  final Either<DiaryFailure, List<DiaryEntry>> entriesEither;

  @override
  String toString() {
    return 'ListDiaryEvent.diaryEntriesReceived(entriesEither: $entriesEither)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiaryEntriesReceived &&
            (identical(other.entriesEither, entriesEither) ||
                const DeepCollectionEquality()
                    .equals(other.entriesEither, entriesEither)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entriesEither);

  @JsonKey(ignore: true)
  @override
  _$DiaryEntriesReceivedCopyWith<_DiaryEntriesReceived> get copyWith =>
      __$DiaryEntriesReceivedCopyWithImpl<_DiaryEntriesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IMentionable? mentionable) watchAll,
    required TResult Function(
            Either<DiaryFailure, List<DiaryEntry>> entriesEither)
        diaryEntriesReceived,
  }) {
    return diaryEntriesReceived(entriesEither);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    required TResult orElse(),
  }) {
    if (diaryEntriesReceived != null) {
      return diaryEntriesReceived(entriesEither);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_DiaryEntriesReceived value) diaryEntriesReceived,
  }) {
    return diaryEntriesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    required TResult orElse(),
  }) {
    if (diaryEntriesReceived != null) {
      return diaryEntriesReceived(this);
    }
    return orElse();
  }
}

abstract class _DiaryEntriesReceived implements ListDiaryEvent {
  const factory _DiaryEntriesReceived(
          Either<DiaryFailure, List<DiaryEntry>> entriesEither) =
      _$_DiaryEntriesReceived;

  Either<DiaryFailure, List<DiaryEntry>> get entriesEither =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DiaryEntriesReceivedCopyWith<_DiaryEntriesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListDiaryStateTearOff {
  const _$ListDiaryStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<DiaryEntry> entryList) {
    return _LoadSuccess(
      entryList,
    );
  }

  _LoadFailure loadFailure(DiaryFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $ListDiaryState = _$ListDiaryStateTearOff();

/// @nodoc
mixin _$ListDiaryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<DiaryEntry> entryList) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DiaryEntry> entryList)? loadSuccess,
    TResult Function(DiaryFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDiaryStateCopyWith<$Res> {
  factory $ListDiaryStateCopyWith(
          ListDiaryState value, $Res Function(ListDiaryState) then) =
      _$ListDiaryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListDiaryStateCopyWithImpl<$Res>
    implements $ListDiaryStateCopyWith<$Res> {
  _$ListDiaryStateCopyWithImpl(this._value, this._then);

  final ListDiaryState _value;
  // ignore: unused_field
  final $Res Function(ListDiaryState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ListDiaryStateCopyWithImpl<$Res>
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
    return 'ListDiaryState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<DiaryEntry> entryList) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DiaryEntry> entryList)? loadSuccess,
    TResult Function(DiaryFailure failure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListDiaryState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ListDiaryStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ListDiaryState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<DiaryEntry> entryList) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DiaryEntry> entryList)? loadSuccess,
    TResult Function(DiaryFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ListDiaryState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<DiaryEntry> entryList});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ListDiaryStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? entryList = freezed,
  }) {
    return _then(_LoadSuccess(
      entryList == freezed
          ? _value.entryList
          : entryList // ignore: cast_nullable_to_non_nullable
              as List<DiaryEntry>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.entryList);

  @override
  final List<DiaryEntry> entryList;

  @override
  String toString() {
    return 'ListDiaryState.loadSuccess(entryList: $entryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.entryList, entryList) ||
                const DeepCollectionEquality()
                    .equals(other.entryList, entryList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entryList);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<DiaryEntry> entryList) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) {
    return loadSuccess(entryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DiaryEntry> entryList)? loadSuccess,
    TResult Function(DiaryFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(entryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ListDiaryState {
  const factory _LoadSuccess(List<DiaryEntry> entryList) = _$_LoadSuccess;

  List<DiaryEntry> get entryList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({DiaryFailure failure});

  $DiaryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ListDiaryStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final DiaryFailure failure;

  @override
  String toString() {
    return 'ListDiaryState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<DiaryEntry> entryList) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<DiaryEntry> entryList)? loadSuccess,
    TResult Function(DiaryFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ListDiaryState {
  const factory _LoadFailure(DiaryFailure failure) = _$_LoadFailure;

  DiaryFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
