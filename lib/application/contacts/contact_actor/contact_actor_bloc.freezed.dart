// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactActorEventTearOff {
  const _$ContactActorEventTearOff();

  _Delete delete({required List<Contact> contactList}) {
    return _Delete(
      contactList: contactList,
    );
  }

  _LoadContactsFromSystem loadContactsFromSystem() {
    return const _LoadContactsFromSystem();
  }
}

/// @nodoc
const $ContactActorEvent = _$ContactActorEventTearOff();

/// @nodoc
mixin _$ContactActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contactList) delete,
    required TResult Function() loadContactsFromSystem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contactList)? delete,
    TResult Function()? loadContactsFromSystem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_LoadContactsFromSystem value)
        loadContactsFromSystem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_LoadContactsFromSystem value)? loadContactsFromSystem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? contactList = freezed,
  }) {
    return _then(_Delete(
      contactList: contactList == freezed
          ? _value.contactList
          : contactList // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete({required this.contactList});

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
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contactList) delete,
    required TResult Function() loadContactsFromSystem,
  }) {
    return delete(contactList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contactList)? delete,
    TResult Function()? loadContactsFromSystem,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(contactList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_LoadContactsFromSystem value)
        loadContactsFromSystem,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_LoadContactsFromSystem value)? loadContactsFromSystem,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ContactActorEvent {
  const factory _Delete({required List<Contact> contactList}) = _$_Delete;

  List<Contact> get contactList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCopyWith<_Delete> get copyWith => throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(List<Contact> contactList) delete,
    required TResult Function() loadContactsFromSystem,
  }) {
    return loadContactsFromSystem();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Contact> contactList)? delete,
    TResult Function()? loadContactsFromSystem,
    required TResult orElse(),
  }) {
    if (loadContactsFromSystem != null) {
      return loadContactsFromSystem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Delete value) delete,
    required TResult Function(_LoadContactsFromSystem value)
        loadContactsFromSystem,
  }) {
    return loadContactsFromSystem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Delete value)? delete,
    TResult Function(_LoadContactsFromSystem value)? loadContactsFromSystem,
    required TResult orElse(),
  }) {
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

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress(ContactsLoading loadingMsg) {
    return _ActionInProgress(
      loadingMsg,
    );
  }

  _DeleteSuccessful deleteSuccessful(int numberContacts) {
    return _DeleteSuccessful(
      numberContacts,
    );
  }

  _LoadSuccessful loadSuccessful(int numberContacts) {
    return _LoadSuccessful(
      numberContacts,
    );
  }

  _DeleteFailure contactsFailure(ContactsFailure failure) {
    return _DeleteFailure(
      failure,
    );
  }
}

/// @nodoc
const $ContactActorState = _$ContactActorStateTearOff();

/// @nodoc
mixin _$ContactActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(int numberContacts) deleteSuccessful,
    required TResult Function(int numberContacts) loadSuccessful,
    required TResult Function(ContactsFailure failure) contactsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(int numberContacts)? deleteSuccessful,
    TResult Function(int numberContacts)? loadSuccessful,
    TResult Function(ContactsFailure failure)? contactsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSuccessful value) deleteSuccessful,
    required TResult Function(_LoadSuccessful value) loadSuccessful,
    required TResult Function(_DeleteFailure value) contactsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSuccessful value)? deleteSuccessful,
    TResult Function(_LoadSuccessful value)? loadSuccessful,
    TResult Function(_DeleteFailure value)? contactsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(int numberContacts) deleteSuccessful,
    required TResult Function(int numberContacts) loadSuccessful,
    required TResult Function(ContactsFailure failure) contactsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(int numberContacts)? deleteSuccessful,
    TResult Function(int numberContacts)? loadSuccessful,
    TResult Function(ContactsFailure failure)? contactsFailure,
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
    required TResult Function(_DeleteSuccessful value) deleteSuccessful,
    required TResult Function(_LoadSuccessful value) loadSuccessful,
    required TResult Function(_DeleteFailure value) contactsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSuccessful value)? deleteSuccessful,
    TResult Function(_LoadSuccessful value)? loadSuccessful,
    TResult Function(_DeleteFailure value)? contactsFailure,
    required TResult orElse(),
  }) {
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
    Object? loadingMsg = freezed,
  }) {
    return _then(_ActionInProgress(
      loadingMsg == freezed
          ? _value.loadingMsg
          : loadingMsg // ignore: cast_nullable_to_non_nullable
              as ContactsLoading,
    ));
  }

  @override
  $ContactsLoadingCopyWith<$Res> get loadingMsg {
    return $ContactsLoadingCopyWith<$Res>(_value.loadingMsg, (value) {
      return _then(_value.copyWith(loadingMsg: value));
    });
  }
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress(this.loadingMsg);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(int numberContacts) deleteSuccessful,
    required TResult Function(int numberContacts) loadSuccessful,
    required TResult Function(ContactsFailure failure) contactsFailure,
  }) {
    return actionInProgress(loadingMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(int numberContacts)? deleteSuccessful,
    TResult Function(int numberContacts)? loadSuccessful,
    TResult Function(ContactsFailure failure)? contactsFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(loadingMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSuccessful value) deleteSuccessful,
    required TResult Function(_LoadSuccessful value) loadSuccessful,
    required TResult Function(_DeleteFailure value) contactsFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSuccessful value)? deleteSuccessful,
    TResult Function(_LoadSuccessful value)? loadSuccessful,
    TResult Function(_DeleteFailure value)? contactsFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ContactActorState {
  const factory _ActionInProgress(ContactsLoading loadingMsg) =
      _$_ActionInProgress;

  ContactsLoading get loadingMsg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActionInProgressCopyWith<_ActionInProgress> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? numberContacts = freezed,
  }) {
    return _then(_DeleteSuccessful(
      numberContacts == freezed
          ? _value.numberContacts
          : numberContacts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteSuccessful implements _DeleteSuccessful {
  const _$_DeleteSuccessful(this.numberContacts);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(int numberContacts) deleteSuccessful,
    required TResult Function(int numberContacts) loadSuccessful,
    required TResult Function(ContactsFailure failure) contactsFailure,
  }) {
    return deleteSuccessful(numberContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(int numberContacts)? deleteSuccessful,
    TResult Function(int numberContacts)? loadSuccessful,
    TResult Function(ContactsFailure failure)? contactsFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccessful != null) {
      return deleteSuccessful(numberContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSuccessful value) deleteSuccessful,
    required TResult Function(_LoadSuccessful value) loadSuccessful,
    required TResult Function(_DeleteFailure value) contactsFailure,
  }) {
    return deleteSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSuccessful value)? deleteSuccessful,
    TResult Function(_LoadSuccessful value)? loadSuccessful,
    TResult Function(_DeleteFailure value)? contactsFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccessful != null) {
      return deleteSuccessful(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccessful implements ContactActorState {
  const factory _DeleteSuccessful(int numberContacts) = _$_DeleteSuccessful;

  int get numberContacts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteSuccessfulCopyWith<_DeleteSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? numberContacts = freezed,
  }) {
    return _then(_LoadSuccessful(
      numberContacts == freezed
          ? _value.numberContacts
          : numberContacts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadSuccessful implements _LoadSuccessful {
  const _$_LoadSuccessful(this.numberContacts);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(int numberContacts) deleteSuccessful,
    required TResult Function(int numberContacts) loadSuccessful,
    required TResult Function(ContactsFailure failure) contactsFailure,
  }) {
    return loadSuccessful(numberContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(int numberContacts)? deleteSuccessful,
    TResult Function(int numberContacts)? loadSuccessful,
    TResult Function(ContactsFailure failure)? contactsFailure,
    required TResult orElse(),
  }) {
    if (loadSuccessful != null) {
      return loadSuccessful(numberContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSuccessful value) deleteSuccessful,
    required TResult Function(_LoadSuccessful value) loadSuccessful,
    required TResult Function(_DeleteFailure value) contactsFailure,
  }) {
    return loadSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSuccessful value)? deleteSuccessful,
    TResult Function(_LoadSuccessful value)? loadSuccessful,
    TResult Function(_DeleteFailure value)? contactsFailure,
    required TResult orElse(),
  }) {
    if (loadSuccessful != null) {
      return loadSuccessful(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessful implements ContactActorState {
  const factory _LoadSuccessful(int numberContacts) = _$_LoadSuccessful;

  int get numberContacts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessfulCopyWith<_LoadSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? failure = freezed,
  }) {
    return _then(_DeleteFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ContactsFailure,
    ));
  }

  @override
  $ContactsFailureCopyWith<$Res> get failure {
    return $ContactsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.failure);

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(int numberContacts) deleteSuccessful,
    required TResult Function(int numberContacts) loadSuccessful,
    required TResult Function(ContactsFailure failure) contactsFailure,
  }) {
    return contactsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(int numberContacts)? deleteSuccessful,
    TResult Function(int numberContacts)? loadSuccessful,
    TResult Function(ContactsFailure failure)? contactsFailure,
    required TResult orElse(),
  }) {
    if (contactsFailure != null) {
      return contactsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteSuccessful value) deleteSuccessful,
    required TResult Function(_LoadSuccessful value) loadSuccessful,
    required TResult Function(_DeleteFailure value) contactsFailure,
  }) {
    return contactsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteSuccessful value)? deleteSuccessful,
    TResult Function(_LoadSuccessful value)? loadSuccessful,
    TResult Function(_DeleteFailure value)? contactsFailure,
    required TResult orElse(),
  }) {
    if (contactsFailure != null) {
      return contactsFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ContactActorState {
  const factory _DeleteFailure(ContactsFailure failure) = _$_DeleteFailure;

  ContactsFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
