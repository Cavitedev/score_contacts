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
  _Delete delete({Contact contact}) {
    return _Delete(
      contact: contact,
    );
  }

// ignore: unused_element
  _DeleteSelectedContacts deleteSelectedContacts() {
    return const _DeleteSelectedContacts();
  }

// ignore: unused_element
  _ToggleSelectionContact toggleSelectionContact(Contact contact) {
    return _ToggleSelectionContact(
      contact,
    );
  }

// ignore: unused_element
  _DeselectAllContacts deselectAllContacts() {
    return const _DeselectAllContacts();
  }
}

// ignore: unused_element
const $ContactActorEvent = _$ContactActorEventTearOff();

mixin _$ContactActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Contact contact),
    @required Result deleteSelectedContacts(),
    @required Result toggleSelectionContact(Contact contact),
    @required Result deselectAllContacts(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Contact contact),
    Result deleteSelectedContacts(),
    Result toggleSelectionContact(Contact contact),
    Result deselectAllContacts(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
    @required Result deleteSelectedContacts(_DeleteSelectedContacts value),
    @required Result toggleSelectionContact(_ToggleSelectionContact value),
    @required Result deselectAllContacts(_DeselectAllContacts value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    Result deleteSelectedContacts(_DeleteSelectedContacts value),
    Result toggleSelectionContact(_ToggleSelectionContact value),
    Result deselectAllContacts(_DeselectAllContacts value),
    @required Result orElse(),
  });
}

abstract class $ContactActorEventCopyWith<$Res> {
  factory $ContactActorEventCopyWith(
          ContactActorEvent value, $Res Function(ContactActorEvent) then) =
      _$ContactActorEventCopyWithImpl<$Res>;
}

class _$ContactActorEventCopyWithImpl<$Res>
    implements $ContactActorEventCopyWith<$Res> {
  _$ContactActorEventCopyWithImpl(this._value, this._then);

  final ContactActorEvent _value;
  // ignore: unused_field
  final $Res Function(ContactActorEvent) _then;
}

abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;

  $Res call({Contact contact});

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

class _$_Delete implements _Delete {
  const _$_Delete({this.contact});

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
    @required Result deleteSelectedContacts(),
    @required Result toggleSelectionContact(Contact contact),
    @required Result deselectAllContacts(),
  }) {
    assert(delete != null);
    assert(deleteSelectedContacts != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    return delete(contact);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Contact contact),
    Result deleteSelectedContacts(),
    Result toggleSelectionContact(Contact contact),
    Result deselectAllContacts(),
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
    @required Result deleteSelectedContacts(_DeleteSelectedContacts value),
    @required Result toggleSelectionContact(_ToggleSelectionContact value),
    @required Result deselectAllContacts(_DeselectAllContacts value),
  }) {
    assert(delete != null);
    assert(deleteSelectedContacts != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    Result deleteSelectedContacts(_DeleteSelectedContacts value),
    Result toggleSelectionContact(_ToggleSelectionContact value),
    Result deselectAllContacts(_DeselectAllContacts value),
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
  const factory _Delete({Contact contact}) = _$_Delete;

  Contact get contact;

  _$DeleteCopyWith<_Delete> get copyWith;
}

abstract class _$DeleteSelectedContactsCopyWith<$Res> {
  factory _$DeleteSelectedContactsCopyWith(_DeleteSelectedContacts value,
      $Res Function(_DeleteSelectedContacts) then) =
  __$DeleteSelectedContactsCopyWithImpl<$Res>;
}

class __$DeleteSelectedContactsCopyWithImpl<$Res>
    extends _$ContactActorEventCopyWithImpl<$Res>
    implements _$DeleteSelectedContactsCopyWith<$Res> {
  __$DeleteSelectedContactsCopyWithImpl(_DeleteSelectedContacts _value,
      $Res Function(_DeleteSelectedContacts) _then)
      : super(_value, (v) => _then(v as _DeleteSelectedContacts));

  @override
  _DeleteSelectedContacts get _value => super._value as _DeleteSelectedContacts;
}

class _$_DeleteSelectedContacts implements _DeleteSelectedContacts {
  const _$_DeleteSelectedContacts();

  @override
  String toString() {
    return 'ContactActorEvent.deleteSelectedContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSelectedContacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Contact contact),
    @required Result deleteSelectedContacts(),
    @required Result toggleSelectionContact(Contact contact),
    @required Result deselectAllContacts(),
  }) {
    assert(delete != null);
    assert(deleteSelectedContacts != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    return deleteSelectedContacts();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Contact contact),
    Result deleteSelectedContacts(),
    Result toggleSelectionContact(Contact contact),
    Result deselectAllContacts(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSelectedContacts != null) {
      return deleteSelectedContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
    @required Result deleteSelectedContacts(_DeleteSelectedContacts value),
    @required Result toggleSelectionContact(_ToggleSelectionContact value),
    @required Result deselectAllContacts(_DeselectAllContacts value),
  }) {
    assert(delete != null);
    assert(deleteSelectedContacts != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    return deleteSelectedContacts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    Result deleteSelectedContacts(_DeleteSelectedContacts value),
    Result toggleSelectionContact(_ToggleSelectionContact value),
    Result deselectAllContacts(_DeselectAllContacts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSelectedContacts != null) {
      return deleteSelectedContacts(this);
    }
    return orElse();
  }
}

abstract class _DeleteSelectedContacts implements ContactActorEvent {
  const factory _DeleteSelectedContacts() = _$_DeleteSelectedContacts;
}

abstract class _$ToggleSelectionContactCopyWith<$Res> {
  factory _$ToggleSelectionContactCopyWith(_ToggleSelectionContact value,
      $Res Function(_ToggleSelectionContact) then) =
  __$ToggleSelectionContactCopyWithImpl<$Res>;

  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

class __$ToggleSelectionContactCopyWithImpl<$Res>
    extends _$ContactActorEventCopyWithImpl<$Res>
    implements _$ToggleSelectionContactCopyWith<$Res> {
  __$ToggleSelectionContactCopyWithImpl(_ToggleSelectionContact _value,
      $Res Function(_ToggleSelectionContact) _then)
      : super(_value, (v) => _then(v as _ToggleSelectionContact));

  @override
  _ToggleSelectionContact get _value => super._value as _ToggleSelectionContact;

  @override
  $Res call({
    Object contact = freezed,
  }) {
    return _then(_ToggleSelectionContact(
      contact == freezed ? _value.contact : contact as Contact,
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

class _$_ToggleSelectionContact implements _ToggleSelectionContact {
  const _$_ToggleSelectionContact(this.contact) : assert(contact != null);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactActorEvent.toggleSelectionContact(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleSelectionContact &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contact);

  @override
  _$ToggleSelectionContactCopyWith<_ToggleSelectionContact> get copyWith =>
      __$ToggleSelectionContactCopyWithImpl<_ToggleSelectionContact>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Contact contact),
    @required Result deleteSelectedContacts(),
    @required Result toggleSelectionContact(Contact contact),
    @required Result deselectAllContacts(),
  }) {
    assert(delete != null);
    assert(deleteSelectedContacts != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    return toggleSelectionContact(contact);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Contact contact),
    Result deleteSelectedContacts(),
    Result toggleSelectionContact(Contact contact),
    Result deselectAllContacts(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleSelectionContact != null) {
      return toggleSelectionContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
    @required Result deleteSelectedContacts(_DeleteSelectedContacts value),
    @required Result toggleSelectionContact(_ToggleSelectionContact value),
    @required Result deselectAllContacts(_DeselectAllContacts value),
  }) {
    assert(delete != null);
    assert(deleteSelectedContacts != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    return toggleSelectionContact(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    Result deleteSelectedContacts(_DeleteSelectedContacts value),
    Result toggleSelectionContact(_ToggleSelectionContact value),
    Result deselectAllContacts(_DeselectAllContacts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleSelectionContact != null) {
      return toggleSelectionContact(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelectionContact implements ContactActorEvent {
  const factory _ToggleSelectionContact(Contact contact) =
  _$_ToggleSelectionContact;

  Contact get contact;

  _$ToggleSelectionContactCopyWith<_ToggleSelectionContact> get copyWith;
}

abstract class _$DeselectAllContactsCopyWith<$Res> {
  factory _$DeselectAllContactsCopyWith(_DeselectAllContacts value,
      $Res Function(_DeselectAllContacts) then) =
  __$DeselectAllContactsCopyWithImpl<$Res>;
}

class __$DeselectAllContactsCopyWithImpl<$Res>
    extends _$ContactActorEventCopyWithImpl<$Res>
    implements _$DeselectAllContactsCopyWith<$Res> {
  __$DeselectAllContactsCopyWithImpl(_DeselectAllContacts _value,
      $Res Function(_DeselectAllContacts) _then)
      : super(_value, (v) => _then(v as _DeselectAllContacts));

  @override
  _DeselectAllContacts get _value => super._value as _DeselectAllContacts;
}

class _$_DeselectAllContacts implements _DeselectAllContacts {
  const _$_DeselectAllContacts();

  @override
  String toString() {
    return 'ContactActorEvent.deselectAllContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeselectAllContacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Contact contact),
    @required Result deleteSelectedContacts(),
    @required Result toggleSelectionContact(Contact contact),
    @required Result deselectAllContacts(),
  }) {
    assert(delete != null);
    assert(deleteSelectedContacts != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    return deselectAllContacts();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Contact contact),
    Result deleteSelectedContacts(),
    Result toggleSelectionContact(Contact contact),
    Result deselectAllContacts(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deselectAllContacts != null) {
      return deselectAllContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
    @required Result deleteSelectedContacts(_DeleteSelectedContacts value),
    @required Result toggleSelectionContact(_ToggleSelectionContact value),
    @required Result deselectAllContacts(_DeselectAllContacts value),
  }) {
    assert(delete != null);
    assert(deleteSelectedContacts != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    return deselectAllContacts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    Result deleteSelectedContacts(_DeleteSelectedContacts value),
    Result toggleSelectionContact(_ToggleSelectionContact value),
    Result deselectAllContacts(_DeselectAllContacts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deselectAllContacts != null) {
      return deselectAllContacts(this);
    }
    return orElse();
  }
}

abstract class _DeselectAllContacts implements ContactActorEvent {
  const factory _DeselectAllContacts() = _$_DeselectAllContacts;
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
  _SelectContacts selectContacts(Set<Contact> selectedContacts) {
    return _SelectContacts(
      selectedContacts,
    );
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
    @required Result selectContacts(Set<Contact> selectedContacts),
    @required Result deleteFailure(ContactsFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result selectContacts(Set<Contact> selectedContacts),
    Result deleteFailure(ContactsFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccessful(_DeleteSuccessful value),
    @required Result selectContacts(_SelectContacts value),
    @required Result deleteFailure(_DeleteFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result selectContacts(_SelectContacts value),
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
    @required Result selectContacts(Set<Contact> selectedContacts),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result selectContacts(Set<Contact> selectedContacts),
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
    @required Result selectContacts(_SelectContacts value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result selectContacts(_SelectContacts value),
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
    @required Result selectContacts(Set<Contact> selectedContacts),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result selectContacts(Set<Contact> selectedContacts),
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
    @required Result selectContacts(_SelectContacts value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result selectContacts(_SelectContacts value),
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
    @required Result selectContacts(Set<Contact> selectedContacts),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return deleteSuccessful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result selectContacts(Set<Contact> selectedContacts),
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
    @required Result selectContacts(_SelectContacts value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return deleteSuccessful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result selectContacts(_SelectContacts value),
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

abstract class _$SelectContactsCopyWith<$Res> {
  factory _$SelectContactsCopyWith(_SelectContacts value,
      $Res Function(_SelectContacts) then) =
  __$SelectContactsCopyWithImpl<$Res>;

  $Res call({Set<Contact> selectedContacts});
}

class __$SelectContactsCopyWithImpl<$Res>
    extends _$ContactActorStateCopyWithImpl<$Res>
    implements _$SelectContactsCopyWith<$Res> {
  __$SelectContactsCopyWithImpl(_SelectContacts _value,
      $Res Function(_SelectContacts) _then)
      : super(_value, (v) => _then(v as _SelectContacts));

  @override
  _SelectContacts get _value => super._value as _SelectContacts;

  @override
  $Res call({
    Object selectedContacts = freezed,
  }) {
    return _then(_SelectContacts(
      selectedContacts == freezed
          ? _value.selectedContacts
          : selectedContacts as Set<Contact>,
    ));
  }
}

class _$_SelectContacts implements _SelectContacts {
  const _$_SelectContacts(this.selectedContacts)
      : assert(selectedContacts != null);

  @override
  final Set<Contact> selectedContacts;

  @override
  String toString() {
    return 'ContactActorState.selectContacts(selectedContacts: $selectedContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectContacts &&
            (identical(other.selectedContacts, selectedContacts) ||
                const DeepCollectionEquality()
                    .equals(other.selectedContacts, selectedContacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedContacts);

  @override
  _$SelectContactsCopyWith<_SelectContacts> get copyWith =>
      __$SelectContactsCopyWithImpl<_SelectContacts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccessful(),
    @required Result selectContacts(Set<Contact> selectedContacts),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return selectContacts(selectedContacts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result selectContacts(Set<Contact> selectedContacts),
    Result deleteFailure(ContactsFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectContacts != null) {
      return selectContacts(selectedContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccessful(_DeleteSuccessful value),
    @required Result selectContacts(_SelectContacts value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return selectContacts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result selectContacts(_SelectContacts value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectContacts != null) {
      return selectContacts(this);
    }
    return orElse();
  }
}

abstract class _SelectContacts implements ContactActorState {
  const factory _SelectContacts(Set<Contact> selectedContacts) =
  _$_SelectContacts;

  Set<Contact> get selectedContacts;

  _$SelectContactsCopyWith<_SelectContacts> get copyWith;
}

abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(_DeleteFailure value,
      $Res Function(_DeleteFailure) then) =
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
    @required Result selectContacts(Set<Contact> selectedContacts),
    @required Result deleteFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return deleteFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccessful(),
    Result selectContacts(Set<Contact> selectedContacts),
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
    @required Result selectContacts(_SelectContacts value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccessful != null);
    assert(selectContacts != null);
    assert(deleteFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccessful(_DeleteSuccessful value),
    Result selectContacts(_SelectContacts value),
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
