// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactActorEventTearOff {
  const _$ContactActorEventTearOff();

// ignore: unused_element
  _Delete delete({List<Contact> contactList}) {
    return _Delete(
      contactList: contactList,
    );
  }

// ignore: unused_element
  _LoadContactsFromSystem loadContactsFromSystem() {
    return const _LoadContactsFromSystem();
  }
}

/// @nodoc
// ignore: unused_element
const $ContactActorEvent = _$ContactActorEventTearOff();

/// @nodoc
mixin _$ContactActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult delete(List<Contact> contactList),
    @required TResult loadContactsFromSystem(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult delete(List<Contact> contactList),
    TResult loadContactsFromSystem(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult delete(_Delete value),
    @required TResult loadContactsFromSystem(_LoadContactsFromSystem value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult delete(_Delete value),
    TResult loadContactsFromSystem(_LoadContactsFromSystem value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ContactActorEventCopyWith<$Res> {
  factory $ContactActorEventCopyWith(
          ContactActorEvent value, $Res Function(ContactActorEvent) then) =
      _$ContactActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactActorEventCopyWithImpl<$Res>
    implements $ContactActorEventCopyWith<$Res> {
  _$ContactActorEventCopyWithImpl(this._value, this._then);

  final ContactActorEvent _value;
  // ignore: unused_field
  final $Res Function(ContactActorEvent) _then;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({List<Contact> contactList});
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res> extends _$ContactActorEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object contactList = freezed,
  }) {
    return _then(_Delete(
      contactList: contactList == freezed
          ? _value.contactList
          : contactList as List<Contact>,
    ));
  }
}

/// @nodoc
class _$_Delete implements _Delete {
  const _$_Delete({this.contactList});

  @override
  final List<Contact> contactList;

  @override
  String toString() {
    return 'ContactActorEvent.delete(contactList: $contactList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.contactList, contactList) ||
                const DeepCollectionEquality()
                    .equals(other.contactList, contactList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contactList);

  @JsonKey(ignore: true)
  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult delete(List<Contact> contactList),
    @required TResult loadContactsFromSystem(),
  }) {
    assert(delete != null);
    assert(loadContactsFromSystem != null);
    return delete(contactList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult delete(List<Contact> contactList),
    TResult loadContactsFromSystem(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(contactList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult delete(_Delete value),
    @required TResult loadContactsFromSystem(_LoadContactsFromSystem value),
  }) {
    assert(delete != null);
    assert(loadContactsFromSystem != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult delete(_Delete value),
    TResult loadContactsFromSystem(_LoadContactsFromSystem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ContactActorEvent {
  const factory _Delete({List<Contact> contactList}) = _$_Delete;

  List<Contact> get contactList;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith;
}

/// @nodoc
abstract class _$LoadContactsFromSystemCopyWith<$Res> {
  factory _$LoadContactsFromSystemCopyWith(_LoadContactsFromSystem value,
          $Res Function(_LoadContactsFromSystem) then) =
      __$LoadContactsFromSystemCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadContactsFromSystemCopyWithImpl<$Res>
    extends _$ContactActorEventCopyWithImpl<$Res>
    implements _$LoadContactsFromSystemCopyWith<$Res> {
  __$LoadContactsFromSystemCopyWithImpl(_LoadContactsFromSystem _value,
      $Res Function(_LoadContactsFromSystem) _then)
      : super(_value, (v) => _then(v as _LoadContactsFromSystem));

  @override
  _LoadContactsFromSystem get _value => super._value as _LoadContactsFromSystem;
}

/// @nodoc
class _$_LoadContactsFromSystem implements _LoadContactsFromSystem {
  const _$_LoadContactsFromSystem();

  @override
  String toString() {
    return 'ContactActorEvent.loadContactsFromSystem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadContactsFromSystem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult delete(List<Contact> contactList),
    @required TResult loadContactsFromSystem(),
  }) {
    assert(delete != null);
    assert(loadContactsFromSystem != null);
    return loadContactsFromSystem();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult delete(List<Contact> contactList),
    TResult loadContactsFromSystem(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadContactsFromSystem != null) {
      return loadContactsFromSystem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult delete(_Delete value),
    @required TResult loadContactsFromSystem(_LoadContactsFromSystem value),
  }) {
    assert(delete != null);
    assert(loadContactsFromSystem != null);
    return loadContactsFromSystem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult delete(_Delete value),
    TResult loadContactsFromSystem(_LoadContactsFromSystem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadContactsFromSystem != null) {
      return loadContactsFromSystem(this);
    }
    return orElse();
  }
}

abstract class _LoadContactsFromSystem implements ContactActorEvent {
  const factory _LoadContactsFromSystem() = _$_LoadContactsFromSystem;
}

/// @nodoc
class _$ContactActorStateTearOff {
  const _$ContactActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress(ContactsLoading loadingMsg) {
    return _ActionInProgress(
      loadingMsg,
    );
  }

// ignore: unused_element
  _DeleteSuccessful deleteSuccessful(int numberContacts) {
    return _DeleteSuccessful(
      numberContacts,
    );
  }

// ignore: unused_element
  _LoadSuccessful loadSuccessful(int numberContacts) {
    return _LoadSuccessful(
      numberContacts,
    );
  }

// ignore: unused_element
  _DeleteFailure contactsFailure(ContactsFailure failure) {
    return _DeleteFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContactActorState = _$ContactActorStateTearOff();

/// @nodoc
mixin _$ContactActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(ContactsLoading loadingMsg),
    @required TResult deleteSuccessful(int numberContacts),
    @required TResult loadSuccessful(int numberContacts),
    @required TResult contactsFailure(ContactsFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(ContactsLoading loadingMsg),
    TResult deleteSuccessful(int numberContacts),
    TResult loadSuccessful(int numberContacts),
    TResult contactsFailure(ContactsFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSuccessful(_DeleteSuccessful value),
    @required TResult loadSuccessful(_LoadSuccessful value),
    @required TResult contactsFailure(_DeleteFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSuccessful(_DeleteSuccessful value),
    TResult loadSuccessful(_LoadSuccessful value),
    TResult contactsFailure(_DeleteFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ContactActorStateCopyWith<$Res> {
  factory $ContactActorStateCopyWith(
          ContactActorState value, $Res Function(ContactActorState) then) =
      _$ContactActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactActorStateCopyWithImpl<$Res>
    implements $ContactActorStateCopyWith<$Res> {
  _$ContactActorStateCopyWithImpl(this._value, this._then);

  final ContactActorState _value;
  // ignore: unused_field
  final $Res Function(ContactActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ContactActorStateCopyWithImpl<$Res>
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
    return 'ContactActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(ContactsLoading loadingMsg),
    @required TResult deleteSuccessful(int numberContacts),
    @required TResult loadSuccessful(int numberContacts),
    @required TResult contactsFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(ContactsLoading loadingMsg),
    TResult deleteSuccessful(int numberContacts),
    TResult loadSuccessful(int numberContacts),
    TResult contactsFailure(ContactsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSuccessful(_DeleteSuccessful value),
    @required TResult loadSuccessful(_LoadSuccessful value),
    @required TResult contactsFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSuccessful(_DeleteSuccessful value),
    TResult loadSuccessful(_LoadSuccessful value),
    TResult contactsFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ContactActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
  $Res call({ContactsLoading loadingMsg});

  $ContactsLoadingCopyWith<$Res> get loadingMsg;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ContactActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;

  @override
  $Res call({
    Object loadingMsg = freezed,
  }) {
    return _then(_ActionInProgress(
      loadingMsg == freezed ? _value.loadingMsg : loadingMsg as ContactsLoading,
    ));
  }

  @override
  $ContactsLoadingCopyWith<$Res> get loadingMsg {
    if (_value.loadingMsg == null) {
      return null;
    }
    return $ContactsLoadingCopyWith<$Res>(_value.loadingMsg, (value) {
      return _then(_value.copyWith(loadingMsg: value));
    });
  }
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress(this.loadingMsg) : assert(loadingMsg != null);

  @override
  final ContactsLoading loadingMsg;

  @override
  String toString() {
    return 'ContactActorState.actionInProgress(loadingMsg: $loadingMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionInProgress &&
            (identical(other.loadingMsg, loadingMsg) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMsg, loadingMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loadingMsg);

  @JsonKey(ignore: true)
  @override
  _$ActionInProgressCopyWith<_ActionInProgress> get copyWith =>
      __$ActionInProgressCopyWithImpl<_ActionInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(ContactsLoading loadingMsg),
    @required TResult deleteSuccessful(int numberContacts),
    @required TResult loadSuccessful(int numberContacts),
    @required TResult contactsFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return actionInProgress(loadingMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(ContactsLoading loadingMsg),
    TResult deleteSuccessful(int numberContacts),
    TResult loadSuccessful(int numberContacts),
    TResult contactsFailure(ContactsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(loadingMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSuccessful(_DeleteSuccessful value),
    @required TResult loadSuccessful(_LoadSuccessful value),
    @required TResult contactsFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSuccessful(_DeleteSuccessful value),
    TResult loadSuccessful(_LoadSuccessful value),
    TResult contactsFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ContactActorState {
  const factory _ActionInProgress(ContactsLoading loadingMsg) =
      _$_ActionInProgress;

  ContactsLoading get loadingMsg;
  @JsonKey(ignore: true)
  _$ActionInProgressCopyWith<_ActionInProgress> get copyWith;
}

/// @nodoc
abstract class _$DeleteSuccessfulCopyWith<$Res> {
  factory _$DeleteSuccessfulCopyWith(
          _DeleteSuccessful value, $Res Function(_DeleteSuccessful) then) =
      __$DeleteSuccessfulCopyWithImpl<$Res>;
  $Res call({int numberContacts});
}

/// @nodoc
class __$DeleteSuccessfulCopyWithImpl<$Res>
    extends _$ContactActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessfulCopyWith<$Res> {
  __$DeleteSuccessfulCopyWithImpl(
      _DeleteSuccessful _value, $Res Function(_DeleteSuccessful) _then)
      : super(_value, (v) => _then(v as _DeleteSuccessful));

  @override
  _DeleteSuccessful get _value => super._value as _DeleteSuccessful;

  @override
  $Res call({
    Object numberContacts = freezed,
  }) {
    return _then(_DeleteSuccessful(
      numberContacts == freezed ? _value.numberContacts : numberContacts as int,
    ));
  }
}

/// @nodoc
class _$_DeleteSuccessful implements _DeleteSuccessful {
  const _$_DeleteSuccessful(this.numberContacts)
      : assert(numberContacts != null);

  @override
  final int numberContacts;

  @override
  String toString() {
    return 'ContactActorState.deleteSuccessful(numberContacts: $numberContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteSuccessful &&
            (identical(other.numberContacts, numberContacts) ||
                const DeepCollectionEquality()
                    .equals(other.numberContacts, numberContacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numberContacts);

  @JsonKey(ignore: true)
  @override
  _$DeleteSuccessfulCopyWith<_DeleteSuccessful> get copyWith =>
      __$DeleteSuccessfulCopyWithImpl<_DeleteSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(ContactsLoading loadingMsg),
    @required TResult deleteSuccessful(int numberContacts),
    @required TResult loadSuccessful(int numberContacts),
    @required TResult contactsFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return deleteSuccessful(numberContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(ContactsLoading loadingMsg),
    TResult deleteSuccessful(int numberContacts),
    TResult loadSuccessful(int numberContacts),
    TResult contactsFailure(ContactsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccessful != null) {
      return deleteSuccessful(numberContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSuccessful(_DeleteSuccessful value),
    @required TResult loadSuccessful(_LoadSuccessful value),
    @required TResult contactsFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return deleteSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSuccessful(_DeleteSuccessful value),
    TResult loadSuccessful(_LoadSuccessful value),
    TResult contactsFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccessful != null) {
      return deleteSuccessful(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccessful implements ContactActorState {
  const factory _DeleteSuccessful(int numberContacts) = _$_DeleteSuccessful;

  int get numberContacts;
  @JsonKey(ignore: true)
  _$DeleteSuccessfulCopyWith<_DeleteSuccessful> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessfulCopyWith<$Res> {
  factory _$LoadSuccessfulCopyWith(
          _LoadSuccessful value, $Res Function(_LoadSuccessful) then) =
      __$LoadSuccessfulCopyWithImpl<$Res>;
  $Res call({int numberContacts});
}

/// @nodoc
class __$LoadSuccessfulCopyWithImpl<$Res>
    extends _$ContactActorStateCopyWithImpl<$Res>
    implements _$LoadSuccessfulCopyWith<$Res> {
  __$LoadSuccessfulCopyWithImpl(
      _LoadSuccessful _value, $Res Function(_LoadSuccessful) _then)
      : super(_value, (v) => _then(v as _LoadSuccessful));

  @override
  _LoadSuccessful get _value => super._value as _LoadSuccessful;

  @override
  $Res call({
    Object numberContacts = freezed,
  }) {
    return _then(_LoadSuccessful(
      numberContacts == freezed ? _value.numberContacts : numberContacts as int,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessful implements _LoadSuccessful {
  const _$_LoadSuccessful(this.numberContacts) : assert(numberContacts != null);

  @override
  final int numberContacts;

  @override
  String toString() {
    return 'ContactActorState.loadSuccessful(numberContacts: $numberContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessful &&
            (identical(other.numberContacts, numberContacts) ||
                const DeepCollectionEquality()
                    .equals(other.numberContacts, numberContacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numberContacts);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessfulCopyWith<_LoadSuccessful> get copyWith =>
      __$LoadSuccessfulCopyWithImpl<_LoadSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(ContactsLoading loadingMsg),
    @required TResult deleteSuccessful(int numberContacts),
    @required TResult loadSuccessful(int numberContacts),
    @required TResult contactsFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return loadSuccessful(numberContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(ContactsLoading loadingMsg),
    TResult deleteSuccessful(int numberContacts),
    TResult loadSuccessful(int numberContacts),
    TResult contactsFailure(ContactsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessful != null) {
      return loadSuccessful(numberContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSuccessful(_DeleteSuccessful value),
    @required TResult loadSuccessful(_LoadSuccessful value),
    @required TResult contactsFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return loadSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSuccessful(_DeleteSuccessful value),
    TResult loadSuccessful(_LoadSuccessful value),
    TResult contactsFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessful != null) {
      return loadSuccessful(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessful implements ContactActorState {
  const factory _LoadSuccessful(int numberContacts) = _$_LoadSuccessful;

  int get numberContacts;
  @JsonKey(ignore: true)
  _$LoadSuccessfulCopyWith<_LoadSuccessful> get copyWith;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({ContactsFailure failure});

  $ContactsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$ContactActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DeleteFailure(
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

/// @nodoc
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.failure) : assert(failure != null);

  @override
  final ContactsFailure failure;

  @override
  String toString() {
    return 'ContactActorState.contactsFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(ContactsLoading loadingMsg),
    @required TResult deleteSuccessful(int numberContacts),
    @required TResult loadSuccessful(int numberContacts),
    @required TResult contactsFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return contactsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(ContactsLoading loadingMsg),
    TResult deleteSuccessful(int numberContacts),
    TResult loadSuccessful(int numberContacts),
    TResult contactsFailure(ContactsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (contactsFailure != null) {
      return contactsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deleteSuccessful(_DeleteSuccessful value),
    @required TResult loadSuccessful(_LoadSuccessful value),
    @required TResult contactsFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(loadSuccessful != null);
    assert(contactsFailure != null);
    return contactsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deleteSuccessful(_DeleteSuccessful value),
    TResult loadSuccessful(_LoadSuccessful value),
    TResult contactsFailure(_DeleteFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (contactsFailure != null) {
      return contactsFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ContactActorState {
  const factory _DeleteFailure(ContactsFailure failure) = _$_DeleteFailure;

  ContactsFailure get failure;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}
