// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactWatcherEventTearOff {
  const _$ContactWatcherEventTearOff();

// ignore: unused_element
  _WatchAllAlphabeticOrder watchAllAlphabeticOrder() {
    return const _WatchAllAlphabeticOrder();
  }
}

// ignore: unused_element
const $ContactWatcherEvent = _$ContactWatcherEventTearOff();

mixin _$ContactWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllAlphabeticOrder(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllAlphabeticOrder(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllAlphabeticOrder(_WatchAllAlphabeticOrder value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllAlphabeticOrder(_WatchAllAlphabeticOrder value),
    @required Result orElse(),
  });
}

abstract class $ContactWatcherEventCopyWith<$Res> {
  factory $ContactWatcherEventCopyWith(
          ContactWatcherEvent value, $Res Function(ContactWatcherEvent) then) =
      _$ContactWatcherEventCopyWithImpl<$Res>;
}

class _$ContactWatcherEventCopyWithImpl<$Res>
    implements $ContactWatcherEventCopyWith<$Res> {
  _$ContactWatcherEventCopyWithImpl(this._value, this._then);

  final ContactWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ContactWatcherEvent) _then;
}

abstract class _$WatchAllAlphabeticOrderCopyWith<$Res> {
  factory _$WatchAllAlphabeticOrderCopyWith(_WatchAllAlphabeticOrder value,
          $Res Function(_WatchAllAlphabeticOrder) then) =
      __$WatchAllAlphabeticOrderCopyWithImpl<$Res>;
}

class __$WatchAllAlphabeticOrderCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllAlphabeticOrderCopyWith<$Res> {
  __$WatchAllAlphabeticOrderCopyWithImpl(_WatchAllAlphabeticOrder _value,
      $Res Function(_WatchAllAlphabeticOrder) _then)
      : super(_value, (v) => _then(v as _WatchAllAlphabeticOrder));

  @override
  _WatchAllAlphabeticOrder get _value =>
      super._value as _WatchAllAlphabeticOrder;
}

class _$_WatchAllAlphabeticOrder implements _WatchAllAlphabeticOrder {
  const _$_WatchAllAlphabeticOrder();

  @override
  String toString() {
    return 'ContactWatcherEvent.watchAllAlphabeticOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllAlphabeticOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllAlphabeticOrder(),
  }) {
    assert(watchAllAlphabeticOrder != null);
    return watchAllAlphabeticOrder();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllAlphabeticOrder(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllAlphabeticOrder != null) {
      return watchAllAlphabeticOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllAlphabeticOrder(_WatchAllAlphabeticOrder value),
  }) {
    assert(watchAllAlphabeticOrder != null);
    return watchAllAlphabeticOrder(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllAlphabeticOrder(_WatchAllAlphabeticOrder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllAlphabeticOrder != null) {
      return watchAllAlphabeticOrder(this);
    }
    return orElse();
  }
}

abstract class _WatchAllAlphabeticOrder implements ContactWatcherEvent {
  const factory _WatchAllAlphabeticOrder() = _$_WatchAllAlphabeticOrder;
}

class _$ContactWatcherStateTearOff {
  const _$ContactWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSucces loadSuccess(List<Contact> contacts) {
    return _LoadSucces(
      contacts,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ContactsFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $ContactWatcherState = _$ContactWatcherStateTearOff();

mixin _$ContactWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Contact> contacts),
    @required Result loadFailure(ContactsFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Contact> contacts),
    Result loadFailure(ContactsFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSucces value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSucces value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ContactWatcherStateCopyWith<$Res> {
  factory $ContactWatcherStateCopyWith(
          ContactWatcherState value, $Res Function(ContactWatcherState) then) =
      _$ContactWatcherStateCopyWithImpl<$Res>;
}

class _$ContactWatcherStateCopyWithImpl<$Res>
    implements $ContactWatcherStateCopyWith<$Res> {
  _$ContactWatcherStateCopyWithImpl(this._value, this._then);

  final ContactWatcherState _value;
  // ignore: unused_field
  final $Res Function(ContactWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ContactWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Contact> contacts),
    @required Result loadFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Contact> contacts),
    Result loadFailure(ContactsFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSucces value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSucces value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ContactWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ContactWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Contact> contacts),
    @required Result loadFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Contact> contacts),
    Result loadFailure(ContactsFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSucces value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSucces value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ContactWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccesCopyWith<$Res> {
  factory _$LoadSuccesCopyWith(
          _LoadSucces value, $Res Function(_LoadSucces) then) =
      __$LoadSuccesCopyWithImpl<$Res>;
  $Res call({List<Contact> contacts});
}

class __$LoadSuccesCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccesCopyWith<$Res> {
  __$LoadSuccesCopyWithImpl(
      _LoadSucces _value, $Res Function(_LoadSucces) _then)
      : super(_value, (v) => _then(v as _LoadSucces));

  @override
  _LoadSucces get _value => super._value as _LoadSucces;

  @override
  $Res call({
    Object contacts = freezed,
  }) {
    return _then(_LoadSucces(
      contacts == freezed ? _value.contacts : contacts as List<Contact>,
    ));
  }
}

class _$_LoadSucces implements _LoadSucces {
  const _$_LoadSucces(this.contacts) : assert(contacts != null);

  @override
  final List<Contact> contacts;

  @override
  String toString() {
    return 'ContactWatcherState.loadSuccess(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSucces &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contacts);

  @override
  _$LoadSuccesCopyWith<_LoadSucces> get copyWith =>
      __$LoadSuccesCopyWithImpl<_LoadSucces>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Contact> contacts),
    @required Result loadFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(contacts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Contact> contacts),
    Result loadFailure(ContactsFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSucces value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSucces value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSucces implements ContactWatcherState {
  const factory _LoadSucces(List<Contact> contacts) = _$_LoadSucces;

  List<Contact> get contacts;
  _$LoadSuccesCopyWith<_LoadSucces> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ContactsFailure failure});

  $ContactsFailureCopyWith<$Res> get failure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed ? _value.failure : failure as ContactsFailure,
    ));
  }

  @override
  $ContactsFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ContactsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final ContactsFailure failure;

  @override
  String toString() {
    return 'ContactWatcherState.loadFailure(failure: $failure)';
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

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Contact> contacts),
    @required Result loadFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Contact> contacts),
    Result loadFailure(ContactsFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSucces value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSucces value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ContactWatcherState {
  const factory _LoadFailure(ContactsFailure failure) = _$_LoadFailure;

  ContactsFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
