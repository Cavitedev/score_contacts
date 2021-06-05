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

  _ToggleSelection toggleSelection(SelectionEntry selectionEntry) {
    return _ToggleSelection(
      selectionEntry,
    );
  }

  _SelectAll selectAll() {
    return const _SelectAll();
  }

  _DeselectAll deselectAll() {
    return const _DeselectAll();
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
    required TResult Function(SelectionEntry selectionEntry) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    TResult Function(SelectionEntry selectionEntry)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_DiaryEntriesReceived value) diaryEntriesReceived,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
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
    required TResult Function(SelectionEntry selectionEntry) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
  }) {
    return watchAll(mentionable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    TResult Function(SelectionEntry selectionEntry)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
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
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
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
    required TResult Function(SelectionEntry selectionEntry) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
  }) {
    return diaryEntriesReceived(entriesEither);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    TResult Function(SelectionEntry selectionEntry)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
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
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
  }) {
    return diaryEntriesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
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
abstract class _$ToggleSelectionCopyWith<$Res> {
  factory _$ToggleSelectionCopyWith(
          _ToggleSelection value, $Res Function(_ToggleSelection) then) =
      __$ToggleSelectionCopyWithImpl<$Res>;
  $Res call({SelectionEntry selectionEntry});
}

/// @nodoc
class __$ToggleSelectionCopyWithImpl<$Res>
    extends _$ListDiaryEventCopyWithImpl<$Res>
    implements _$ToggleSelectionCopyWith<$Res> {
  __$ToggleSelectionCopyWithImpl(
      _ToggleSelection _value, $Res Function(_ToggleSelection) _then)
      : super(_value, (v) => _then(v as _ToggleSelection));

  @override
  _ToggleSelection get _value => super._value as _ToggleSelection;

  @override
  $Res call({
    Object? selectionEntry = freezed,
  }) {
    return _then(_ToggleSelection(
      selectionEntry == freezed
          ? _value.selectionEntry
          : selectionEntry // ignore: cast_nullable_to_non_nullable
              as SelectionEntry,
    ));
  }
}

/// @nodoc

class _$_ToggleSelection implements _ToggleSelection {
  const _$_ToggleSelection(this.selectionEntry);

  @override
  final SelectionEntry selectionEntry;

  @override
  String toString() {
    return 'ListDiaryEvent.toggleSelection(selectionEntry: $selectionEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleSelection &&
            (identical(other.selectionEntry, selectionEntry) ||
                const DeepCollectionEquality()
                    .equals(other.selectionEntry, selectionEntry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectionEntry);

  @JsonKey(ignore: true)
  @override
  _$ToggleSelectionCopyWith<_ToggleSelection> get copyWith =>
      __$ToggleSelectionCopyWithImpl<_ToggleSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IMentionable? mentionable) watchAll,
    required TResult Function(
            Either<DiaryFailure, List<DiaryEntry>> entriesEither)
        diaryEntriesReceived,
    required TResult Function(SelectionEntry selectionEntry) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
  }) {
    return toggleSelection(selectionEntry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    TResult Function(SelectionEntry selectionEntry)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(selectionEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_DiaryEntriesReceived value) diaryEntriesReceived,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
  }) {
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelection implements ListDiaryEvent {
  const factory _ToggleSelection(SelectionEntry selectionEntry) =
      _$_ToggleSelection;

  SelectionEntry get selectionEntry => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToggleSelectionCopyWith<_ToggleSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectAllCopyWith<$Res> {
  factory _$SelectAllCopyWith(
          _SelectAll value, $Res Function(_SelectAll) then) =
      __$SelectAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectAllCopyWithImpl<$Res> extends _$ListDiaryEventCopyWithImpl<$Res>
    implements _$SelectAllCopyWith<$Res> {
  __$SelectAllCopyWithImpl(_SelectAll _value, $Res Function(_SelectAll) _then)
      : super(_value, (v) => _then(v as _SelectAll));

  @override
  _SelectAll get _value => super._value as _SelectAll;
}

/// @nodoc

class _$_SelectAll implements _SelectAll {
  const _$_SelectAll();

  @override
  String toString() {
    return 'ListDiaryEvent.selectAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IMentionable? mentionable) watchAll,
    required TResult Function(
            Either<DiaryFailure, List<DiaryEntry>> entriesEither)
        diaryEntriesReceived,
    required TResult Function(SelectionEntry selectionEntry) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
  }) {
    return selectAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    TResult Function(SelectionEntry selectionEntry)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (selectAll != null) {
      return selectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_DiaryEntriesReceived value) diaryEntriesReceived,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
  }) {
    return selectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) {
    if (selectAll != null) {
      return selectAll(this);
    }
    return orElse();
  }
}

abstract class _SelectAll implements ListDiaryEvent {
  const factory _SelectAll() = _$_SelectAll;
}

/// @nodoc
abstract class _$DeselectAllCopyWith<$Res> {
  factory _$DeselectAllCopyWith(
          _DeselectAll value, $Res Function(_DeselectAll) then) =
      __$DeselectAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeselectAllCopyWithImpl<$Res>
    extends _$ListDiaryEventCopyWithImpl<$Res>
    implements _$DeselectAllCopyWith<$Res> {
  __$DeselectAllCopyWithImpl(
      _DeselectAll _value, $Res Function(_DeselectAll) _then)
      : super(_value, (v) => _then(v as _DeselectAll));

  @override
  _DeselectAll get _value => super._value as _DeselectAll;
}

/// @nodoc

class _$_DeselectAll implements _DeselectAll {
  const _$_DeselectAll();

  @override
  String toString() {
    return 'ListDiaryEvent.deselectAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeselectAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IMentionable? mentionable) watchAll,
    required TResult Function(
            Either<DiaryFailure, List<DiaryEntry>> entriesEither)
        diaryEntriesReceived,
    required TResult Function(SelectionEntry selectionEntry) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
  }) {
    return deselectAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IMentionable? mentionable)? watchAll,
    TResult Function(Either<DiaryFailure, List<DiaryEntry>> entriesEither)?
        diaryEntriesReceived,
    TResult Function(SelectionEntry selectionEntry)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    required TResult orElse(),
  }) {
    if (deselectAll != null) {
      return deselectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_DiaryEntriesReceived value) diaryEntriesReceived,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
  }) {
    return deselectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_DiaryEntriesReceived value)? diaryEntriesReceived,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    required TResult orElse(),
  }) {
    if (deselectAll != null) {
      return deselectAll(this);
    }
    return orElse();
  }
}

abstract class _DeselectAll implements ListDiaryEvent {
  const factory _DeselectAll() = _$_DeselectAll;
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

  _LoadSuccess loadSuccess(SuccessListDiary successValues) {
    return _LoadSuccess(
      successValues,
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
    required TResult Function(SuccessListDiary successValues) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SuccessListDiary successValues)? loadSuccess,
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
    required TResult Function(SuccessListDiary successValues) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SuccessListDiary successValues)? loadSuccess,
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
    required TResult Function(SuccessListDiary successValues) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SuccessListDiary successValues)? loadSuccess,
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
  $Res call({SuccessListDiary successValues});

  $SuccessListDiaryCopyWith<$Res> get successValues;
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
    Object? successValues = freezed,
  }) {
    return _then(_LoadSuccess(
      successValues == freezed
          ? _value.successValues
          : successValues // ignore: cast_nullable_to_non_nullable
              as SuccessListDiary,
    ));
  }

  @override
  $SuccessListDiaryCopyWith<$Res> get successValues {
    return $SuccessListDiaryCopyWith<$Res>(_value.successValues, (value) {
      return _then(_value.copyWith(successValues: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.successValues);

  @override
  final SuccessListDiary successValues;

  @override
  String toString() {
    return 'ListDiaryState.loadSuccess(successValues: $successValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.successValues, successValues) ||
                const DeepCollectionEquality()
                    .equals(other.successValues, successValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(successValues);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(SuccessListDiary successValues) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) {
    return loadSuccess(successValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SuccessListDiary successValues)? loadSuccess,
    TResult Function(DiaryFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(successValues);
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
  const factory _LoadSuccess(SuccessListDiary successValues) = _$_LoadSuccess;

  SuccessListDiary get successValues => throw _privateConstructorUsedError;
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
    required TResult Function(SuccessListDiary successValues) loadSuccess,
    required TResult Function(DiaryFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(SuccessListDiary successValues)? loadSuccess,
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

/// @nodoc
class _$SuccessListDiaryTearOff {
  const _$SuccessListDiaryTearOff();

  _SuccessListDiary call(
      {required List<SelectionEntry> selectionEntryList,
      Filter? filter,
      int selectedAmount = 0}) {
    return _SuccessListDiary(
      selectionEntryList: selectionEntryList,
      filter: filter,
      selectedAmount: selectedAmount,
    );
  }
}

/// @nodoc
const $SuccessListDiary = _$SuccessListDiaryTearOff();

/// @nodoc
mixin _$SuccessListDiary {
  List<SelectionEntry> get selectionEntryList =>
      throw _privateConstructorUsedError;
  Filter? get filter => throw _privateConstructorUsedError;
  int get selectedAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuccessListDiaryCopyWith<SuccessListDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessListDiaryCopyWith<$Res> {
  factory $SuccessListDiaryCopyWith(
          SuccessListDiary value, $Res Function(SuccessListDiary) then) =
      _$SuccessListDiaryCopyWithImpl<$Res>;
  $Res call(
      {List<SelectionEntry> selectionEntryList,
      Filter? filter,
      int selectedAmount});

  $FilterCopyWith<$Res>? get filter;
}

/// @nodoc
class _$SuccessListDiaryCopyWithImpl<$Res>
    implements $SuccessListDiaryCopyWith<$Res> {
  _$SuccessListDiaryCopyWithImpl(this._value, this._then);

  final SuccessListDiary _value;
  // ignore: unused_field
  final $Res Function(SuccessListDiary) _then;

  @override
  $Res call({
    Object? selectionEntryList = freezed,
    Object? filter = freezed,
    Object? selectedAmount = freezed,
  }) {
    return _then(_value.copyWith(
      selectionEntryList: selectionEntryList == freezed
          ? _value.selectionEntryList
          : selectionEntryList // ignore: cast_nullable_to_non_nullable
              as List<SelectionEntry>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter?,
      selectedAmount: selectedAmount == freezed
          ? _value.selectedAmount
          : selectedAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $FilterCopyWith<$Res>? get filter {
    if (_value.filter == null) {
      return null;
    }

    return $FilterCopyWith<$Res>(_value.filter!, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
abstract class _$SuccessListDiaryCopyWith<$Res>
    implements $SuccessListDiaryCopyWith<$Res> {
  factory _$SuccessListDiaryCopyWith(
          _SuccessListDiary value, $Res Function(_SuccessListDiary) then) =
      __$SuccessListDiaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SelectionEntry> selectionEntryList,
      Filter? filter,
      int selectedAmount});

  @override
  $FilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$SuccessListDiaryCopyWithImpl<$Res>
    extends _$SuccessListDiaryCopyWithImpl<$Res>
    implements _$SuccessListDiaryCopyWith<$Res> {
  __$SuccessListDiaryCopyWithImpl(
      _SuccessListDiary _value, $Res Function(_SuccessListDiary) _then)
      : super(_value, (v) => _then(v as _SuccessListDiary));

  @override
  _SuccessListDiary get _value => super._value as _SuccessListDiary;

  @override
  $Res call({
    Object? selectionEntryList = freezed,
    Object? filter = freezed,
    Object? selectedAmount = freezed,
  }) {
    return _then(_SuccessListDiary(
      selectionEntryList: selectionEntryList == freezed
          ? _value.selectionEntryList
          : selectionEntryList // ignore: cast_nullable_to_non_nullable
              as List<SelectionEntry>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter?,
      selectedAmount: selectedAmount == freezed
          ? _value.selectedAmount
          : selectedAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SuccessListDiary extends _SuccessListDiary {
  const _$_SuccessListDiary(
      {required this.selectionEntryList, this.filter, this.selectedAmount = 0})
      : super._();

  @override
  final List<SelectionEntry> selectionEntryList;
  @override
  final Filter? filter;
  @JsonKey(defaultValue: 0)
  @override
  final int selectedAmount;

  @override
  String toString() {
    return 'SuccessListDiary(selectionEntryList: $selectionEntryList, filter: $filter, selectedAmount: $selectedAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessListDiary &&
            (identical(other.selectionEntryList, selectionEntryList) ||
                const DeepCollectionEquality()
                    .equals(other.selectionEntryList, selectionEntryList)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.selectedAmount, selectedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.selectedAmount, selectedAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectionEntryList) ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(selectedAmount);

  @JsonKey(ignore: true)
  @override
  _$SuccessListDiaryCopyWith<_SuccessListDiary> get copyWith =>
      __$SuccessListDiaryCopyWithImpl<_SuccessListDiary>(this, _$identity);
}

abstract class _SuccessListDiary extends SuccessListDiary {
  const factory _SuccessListDiary(
      {required List<SelectionEntry> selectionEntryList,
      Filter? filter,
      int selectedAmount}) = _$_SuccessListDiary;
  const _SuccessListDiary._() : super._();

  @override
  List<SelectionEntry> get selectionEntryList =>
      throw _privateConstructorUsedError;
  @override
  Filter? get filter => throw _privateConstructorUsedError;
  @override
  int get selectedAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessListDiaryCopyWith<_SuccessListDiary> get copyWith =>
      throw _privateConstructorUsedError;
}
