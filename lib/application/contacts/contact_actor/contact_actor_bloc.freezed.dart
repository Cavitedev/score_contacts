// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContactActorEventTearOff {
  const _$ContactActorEventTearOff();

// ignore: unused_element
  _Delete delete(Contact contact) {
    return _Delete(
      contact,
    );
  }
}

// ignore: unused_element
const $ContactActorEvent = _$ContactActorEventTearOff();

mixin _$ContactActorEvent {
  Contact get contact;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Contact contact),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Contact contact),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    @required Result orElse(),
  });

  $ContactActorEventCopyWith<ContactActorEvent> get copyWith;
}

abstract class $ContactActorEventCopyWith<$Res> {
  factory $ContactActorEventCopyWith(
          ContactActorEvent value, $Res Function(ContactActorEvent) then) =
      _$ContactActorEventCopyWithImpl<$Res>;
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

class _$ContactActorEventCopyWithImpl<$Res>
    implements $ContactActorEventCopyWith<$Res> {
  _$ContactActorEventCopyWithImpl(this._value, this._then);

  final ContactActorEvent _value;
  // ignore: unused_field
  final $Res Function(ContactActorEvent) _then;

  @override
  $Res call({
    Object contact = freezed,
  }) {
    return _then(_value.copyWith(
      contact: contact == freezed ? _value.contact : contact as Contact,
    ));
  }

  @override
  $ContactCopyWith<$Res> get contact {
    if (_value.contact == null) {
      return null;
    }
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

abstract class _$DeleteCopyWith<$Res>
    implements $ContactActorEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({Contact contact});

  @override
  $ContactCopyWith<$Res> get contact;
}

class __$DeleteCopyWithImpl<$Res> extends _$ContactActorEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object contact = freezed,
  }) {
    return _then(_Delete(
      contact == freezed ? _value.contact : contact as Contact,
    ));
  }
}

class _$_Delete implements _Delete {
  const _$_Delete(this.contact) : assert(contact != null);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactActorEvent.delete(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contact);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Contact contact),
  }) {
    assert(delete != null);
    return delete(contact);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Contact contact),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
  }) {
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ContactActorEvent {
  const factory _Delete(Contact contact) = _$_Delete;

  @override
  Contact get contact;
  @override
  _$DeleteCopyWith<_Delete> get copyWith;
}

class _$ContactActorStateTearOff {
  const _$ContactActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DeleteSuccessful deleteSuccessful() {
    return const _DeleteSuccessful();
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(ContactsFailure failure) {
    return _DeleteFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $ContactActorState = _$ContactActorStateTearOff();

mixin _$ContactActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccessful(),
    @required Result deleteFailure(ContactsFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result deleteFailure(ContactsFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccessful(_DeleteSuccessful value),
    @required Result deleteFailure(_DeleteFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  });
}

abstract class $ContactActorStateCopyWith<$Res> {
  factory $ContactActorStateCopyWith(
          ContactActorState value, $Res Function(ContactActorState) then) =
      _$ContactActorStateCopyWithImpl<$Res>;
}

class _$ContactActorStateCopyWithImpl<$Res>
    implements $ContactActorStateCopyWith<$Res> {
  _$ContactActorStateCopyWithImpl(this._value, this._then);

  final ContactActorState _value;
  // ignore: unused_field
  final $Res Function(ContactActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ContactActorStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccessful(),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(deleteFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result deleteFailure(ContactsFailure failure),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccessful(_DeleteSuccessful value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(deleteFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
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

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ContactActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ContactActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccessful(),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(deleteFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result deleteFailure(ContactsFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccessful(_DeleteSuccessful value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(deleteFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ContactActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeleteSuccessfulCopyWith<$Res> {
  factory _$DeleteSuccessfulCopyWith(
          _DeleteSuccessful value, $Res Function(_DeleteSuccessful) then) =
      __$DeleteSuccessfulCopyWithImpl<$Res>;
}

class __$DeleteSuccessfulCopyWithImpl<$Res>
    extends _$ContactActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessfulCopyWith<$Res> {
  __$DeleteSuccessfulCopyWithImpl(
      _DeleteSuccessful _value, $Res Function(_DeleteSuccessful) _then)
      : super(_value, (v) => _then(v as _DeleteSuccessful));

  @override
  _DeleteSuccessful get _value => super._value as _DeleteSuccessful;
}

class _$_DeleteSuccessful implements _DeleteSuccessful {
  const _$_DeleteSuccessful();

  @override
  String toString() {
    return 'ContactActorState.deleteSuccessful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccessful(),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(deleteFailure != null);
    return deleteSuccessful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result deleteFailure(ContactsFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccessful != null) {
      return deleteSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccessful(_DeleteSuccessful value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(deleteFailure != null);
    return deleteSuccessful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccessful != null) {
      return deleteSuccessful(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccessful implements ContactActorState {
  const factory _DeleteSuccessful() = _$_DeleteSuccessful;
}

abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({ContactsFailure failure});

  $ContactsFailureCopyWith<$Res> get failure;
}

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

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.failure) : assert(failure != null);

  @override
  final ContactsFailure failure;

  @override
  String toString() {
    return 'ContactActorState.deleteFailure(failure: $failure)';
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

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccessful(),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(deleteFailure != null);
    return deleteFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result deleteFailure(ContactsFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccessful(_DeleteSuccessful value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(deleteFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ContactActorState {
  const factory _DeleteFailure(ContactsFailure failure) = _$_DeleteFailure;

  ContactsFailure get failure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}
