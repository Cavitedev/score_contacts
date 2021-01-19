// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactWatcherEventTearOff {
  const _$ContactWatcherEventTearOff();

// ignore: unused_element
  _ContactsReceived contactsReceived(
      Either<ContactsFailure, List<Contact>> contactsEither) {
    return _ContactsReceived(
      contactsEither,
    );
  }

// ignore: unused_element
  _WatchAll watchAll() {
    return const _WatchAll();
  }

// ignore: unused_element
  _SearchContact searchContact(String searchString) {
    return _SearchContact(
      searchString,
    );
  }

// ignore: unused_element
  _ToggleSelectionContact toggleSelectionContact(
      SelectionContact selectionContact) {
    return _ToggleSelectionContact(
      selectionContact,
    );
  }

// ignore: unused_element
  _DeselectAllContacts deselectAllContacts() {
    return const _DeselectAllContacts();
  }

// ignore: unused_element
  _SelectAllContacts selectAllContacts() {
    return const _SelectAllContacts();
  }
}

/// @nodoc
// ignore: unused_element
const $ContactWatcherEvent = _$ContactWatcherEventTearOff();

/// @nodoc
mixin _$ContactWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult contactsReceived(
            Either<ContactsFailure, List<Contact>> contactsEither),
    @required TResult watchAll(),
    @required TResult searchContact(String searchString),
    @required TResult toggleSelectionContact(SelectionContact selectionContact),
    @required TResult deselectAllContacts(),
    @required TResult selectAllContacts(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult contactsReceived(
        Either<ContactsFailure, List<Contact>> contactsEither),
    TResult watchAll(),
    TResult searchContact(String searchString),
    TResult toggleSelectionContact(SelectionContact selectionContact),
    TResult deselectAllContacts(),
    TResult selectAllContacts(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult contactsReceived(_ContactsReceived value),
    @required TResult watchAll(_WatchAll value),
    @required TResult searchContact(_SearchContact value),
    @required TResult toggleSelectionContact(_ToggleSelectionContact value),
    @required TResult deselectAllContacts(_DeselectAllContacts value),
    @required TResult selectAllContacts(_SelectAllContacts value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult contactsReceived(_ContactsReceived value),
    TResult watchAll(_WatchAll value),
    TResult searchContact(_SearchContact value),
    TResult toggleSelectionContact(_ToggleSelectionContact value),
    TResult deselectAllContacts(_DeselectAllContacts value),
    TResult selectAllContacts(_SelectAllContacts value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ContactWatcherEventCopyWith<$Res> {
  factory $ContactWatcherEventCopyWith(
          ContactWatcherEvent value, $Res Function(ContactWatcherEvent) then) =
      _$ContactWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactWatcherEventCopyWithImpl<$Res>
    implements $ContactWatcherEventCopyWith<$Res> {
  _$ContactWatcherEventCopyWithImpl(this._value, this._then);

  final ContactWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ContactWatcherEvent) _then;
}

/// @nodoc
abstract class _$ContactsReceivedCopyWith<$Res> {
  factory _$ContactsReceivedCopyWith(
          _ContactsReceived value, $Res Function(_ContactsReceived) then) =
      __$ContactsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ContactsFailure, List<Contact>> contactsEither});
}

/// @nodoc
class __$ContactsReceivedCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
    implements _$ContactsReceivedCopyWith<$Res> {
  __$ContactsReceivedCopyWithImpl(
      _ContactsReceived _value, $Res Function(_ContactsReceived) _then)
      : super(_value, (v) => _then(v as _ContactsReceived));

  @override
  _ContactsReceived get _value => super._value as _ContactsReceived;

  @override
  $Res call({
    Object contactsEither = freezed,
  }) {
    return _then(_ContactsReceived(
      contactsEither == freezed
          ? _value.contactsEither
          : contactsEither as Either<ContactsFailure, List<Contact>>,
    ));
  }
}

/// @nodoc
class _$_ContactsReceived implements _ContactsReceived {
  const _$_ContactsReceived(this.contactsEither)
      : assert(contactsEither != null);

  @override
  final Either<ContactsFailure, List<Contact>> contactsEither;

  @override
  String toString() {
    return 'ContactWatcherEvent.contactsReceived(contactsEither: $contactsEither)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactsReceived &&
            (identical(other.contactsEither, contactsEither) ||
                const DeepCollectionEquality()
                    .equals(other.contactsEither, contactsEither)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contactsEither);

  @override
  _$ContactsReceivedCopyWith<_ContactsReceived> get copyWith =>
      __$ContactsReceivedCopyWithImpl<_ContactsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult contactsReceived(
            Either<ContactsFailure, List<Contact>> contactsEither),
    @required TResult watchAll(),
    @required TResult searchContact(String searchString),
    @required TResult toggleSelectionContact(SelectionContact selectionContact),
    @required TResult deselectAllContacts(),
    @required TResult selectAllContacts(),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return contactsReceived(contactsEither);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult contactsReceived(
        Either<ContactsFailure, List<Contact>> contactsEither),
    TResult watchAll(),
    TResult searchContact(String searchString),
    TResult toggleSelectionContact(SelectionContact selectionContact),
    TResult deselectAllContacts(),
    TResult selectAllContacts(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (contactsReceived != null) {
      return contactsReceived(contactsEither);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult contactsReceived(_ContactsReceived value),
    @required TResult watchAll(_WatchAll value),
    @required TResult searchContact(_SearchContact value),
    @required TResult toggleSelectionContact(_ToggleSelectionContact value),
    @required TResult deselectAllContacts(_DeselectAllContacts value),
    @required TResult selectAllContacts(_SelectAllContacts value),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return contactsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult contactsReceived(_ContactsReceived value),
    TResult watchAll(_WatchAll value),
    TResult searchContact(_SearchContact value),
    TResult toggleSelectionContact(_ToggleSelectionContact value),
    TResult deselectAllContacts(_DeselectAllContacts value),
    TResult selectAllContacts(_SelectAllContacts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (contactsReceived != null) {
      return contactsReceived(this);
    }
    return orElse();
  }
}

abstract class _ContactsReceived implements ContactWatcherEvent {
  const factory _ContactsReceived(
          Either<ContactsFailure, List<Contact>> contactsEither) =
      _$_ContactsReceived;

  Either<ContactsFailure, List<Contact>> get contactsEither;
  _$ContactsReceivedCopyWith<_ContactsReceived> get copyWith;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;
}

/// @nodoc
class _$_WatchAll implements _WatchAll {
  const _$_WatchAll();

  @override
  String toString() {
    return 'ContactWatcherEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult contactsReceived(
            Either<ContactsFailure, List<Contact>> contactsEither),
    @required TResult watchAll(),
    @required TResult searchContact(String searchString),
    @required TResult toggleSelectionContact(SelectionContact selectionContact),
    @required TResult deselectAllContacts(),
    @required TResult selectAllContacts(),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult contactsReceived(
        Either<ContactsFailure, List<Contact>> contactsEither),
    TResult watchAll(),
    TResult searchContact(String searchString),
    TResult toggleSelectionContact(SelectionContact selectionContact),
    TResult deselectAllContacts(),
    TResult selectAllContacts(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult contactsReceived(_ContactsReceived value),
    @required TResult watchAll(_WatchAll value),
    @required TResult searchContact(_SearchContact value),
    @required TResult toggleSelectionContact(_ToggleSelectionContact value),
    @required TResult deselectAllContacts(_DeselectAllContacts value),
    @required TResult selectAllContacts(_SelectAllContacts value),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult contactsReceived(_ContactsReceived value),
    TResult watchAll(_WatchAll value),
    TResult searchContact(_SearchContact value),
    TResult toggleSelectionContact(_ToggleSelectionContact value),
    TResult deselectAllContacts(_DeselectAllContacts value),
    TResult selectAllContacts(_SelectAllContacts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements ContactWatcherEvent {
  const factory _WatchAll() = _$_WatchAll;
}

/// @nodoc
abstract class _$SearchContactCopyWith<$Res> {
  factory _$SearchContactCopyWith(
          _SearchContact value, $Res Function(_SearchContact) then) =
      __$SearchContactCopyWithImpl<$Res>;
  $Res call({String searchString});
}

/// @nodoc
class __$SearchContactCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
    implements _$SearchContactCopyWith<$Res> {
  __$SearchContactCopyWithImpl(
      _SearchContact _value, $Res Function(_SearchContact) _then)
      : super(_value, (v) => _then(v as _SearchContact));

  @override
  _SearchContact get _value => super._value as _SearchContact;

  @override
  $Res call({
    Object searchString = freezed,
  }) {
    return _then(_SearchContact(
      searchString == freezed ? _value.searchString : searchString as String,
    ));
  }
}

/// @nodoc
class _$_SearchContact implements _SearchContact {
  const _$_SearchContact(this.searchString) : assert(searchString != null);

  @override
  final String searchString;

  @override
  String toString() {
    return 'ContactWatcherEvent.searchContact(searchString: $searchString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchContact &&
            (identical(other.searchString, searchString) ||
                const DeepCollectionEquality()
                    .equals(other.searchString, searchString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchString);

  @override
  _$SearchContactCopyWith<_SearchContact> get copyWith =>
      __$SearchContactCopyWithImpl<_SearchContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult contactsReceived(
            Either<ContactsFailure, List<Contact>> contactsEither),
    @required TResult watchAll(),
    @required TResult searchContact(String searchString),
    @required TResult toggleSelectionContact(SelectionContact selectionContact),
    @required TResult deselectAllContacts(),
    @required TResult selectAllContacts(),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return searchContact(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult contactsReceived(
        Either<ContactsFailure, List<Contact>> contactsEither),
    TResult watchAll(),
    TResult searchContact(String searchString),
    TResult toggleSelectionContact(SelectionContact selectionContact),
    TResult deselectAllContacts(),
    TResult selectAllContacts(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchContact != null) {
      return searchContact(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult contactsReceived(_ContactsReceived value),
    @required TResult watchAll(_WatchAll value),
    @required TResult searchContact(_SearchContact value),
    @required TResult toggleSelectionContact(_ToggleSelectionContact value),
    @required TResult deselectAllContacts(_DeselectAllContacts value),
    @required TResult selectAllContacts(_SelectAllContacts value),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return searchContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult contactsReceived(_ContactsReceived value),
    TResult watchAll(_WatchAll value),
    TResult searchContact(_SearchContact value),
    TResult toggleSelectionContact(_ToggleSelectionContact value),
    TResult deselectAllContacts(_DeselectAllContacts value),
    TResult selectAllContacts(_SelectAllContacts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchContact != null) {
      return searchContact(this);
    }
    return orElse();
  }
}

abstract class _SearchContact implements ContactWatcherEvent {
  const factory _SearchContact(String searchString) = _$_SearchContact;

  String get searchString;
  _$SearchContactCopyWith<_SearchContact> get copyWith;
}

/// @nodoc
abstract class _$ToggleSelectionContactCopyWith<$Res> {
  factory _$ToggleSelectionContactCopyWith(_ToggleSelectionContact value,
          $Res Function(_ToggleSelectionContact) then) =
      __$ToggleSelectionContactCopyWithImpl<$Res>;
  $Res call({SelectionContact selectionContact});
}

/// @nodoc
class __$ToggleSelectionContactCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
    implements _$ToggleSelectionContactCopyWith<$Res> {
  __$ToggleSelectionContactCopyWithImpl(_ToggleSelectionContact _value,
      $Res Function(_ToggleSelectionContact) _then)
      : super(_value, (v) => _then(v as _ToggleSelectionContact));

  @override
  _ToggleSelectionContact get _value => super._value as _ToggleSelectionContact;

  @override
  $Res call({
    Object selectionContact = freezed,
  }) {
    return _then(_ToggleSelectionContact(
      selectionContact == freezed
          ? _value.selectionContact
          : selectionContact as SelectionContact,
    ));
  }
}

/// @nodoc
class _$_ToggleSelectionContact implements _ToggleSelectionContact {
  const _$_ToggleSelectionContact(this.selectionContact)
      : assert(selectionContact != null);

  @override
  final SelectionContact selectionContact;

  @override
  String toString() {
    return 'ContactWatcherEvent.toggleSelectionContact(selectionContact: $selectionContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleSelectionContact &&
            (identical(other.selectionContact, selectionContact) ||
                const DeepCollectionEquality()
                    .equals(other.selectionContact, selectionContact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectionContact);

  @override
  _$ToggleSelectionContactCopyWith<_ToggleSelectionContact> get copyWith =>
      __$ToggleSelectionContactCopyWithImpl<_ToggleSelectionContact>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult contactsReceived(
            Either<ContactsFailure, List<Contact>> contactsEither),
    @required TResult watchAll(),
    @required TResult searchContact(String searchString),
    @required TResult toggleSelectionContact(SelectionContact selectionContact),
    @required TResult deselectAllContacts(),
    @required TResult selectAllContacts(),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return toggleSelectionContact(selectionContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult contactsReceived(
        Either<ContactsFailure, List<Contact>> contactsEither),
    TResult watchAll(),
    TResult searchContact(String searchString),
    TResult toggleSelectionContact(SelectionContact selectionContact),
    TResult deselectAllContacts(),
    TResult selectAllContacts(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleSelectionContact != null) {
      return toggleSelectionContact(selectionContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult contactsReceived(_ContactsReceived value),
    @required TResult watchAll(_WatchAll value),
    @required TResult searchContact(_SearchContact value),
    @required TResult toggleSelectionContact(_ToggleSelectionContact value),
    @required TResult deselectAllContacts(_DeselectAllContacts value),
    @required TResult selectAllContacts(_SelectAllContacts value),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return toggleSelectionContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult contactsReceived(_ContactsReceived value),
    TResult watchAll(_WatchAll value),
    TResult searchContact(_SearchContact value),
    TResult toggleSelectionContact(_ToggleSelectionContact value),
    TResult deselectAllContacts(_DeselectAllContacts value),
    TResult selectAllContacts(_SelectAllContacts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleSelectionContact != null) {
      return toggleSelectionContact(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelectionContact implements ContactWatcherEvent {
  const factory _ToggleSelectionContact(SelectionContact selectionContact) =
      _$_ToggleSelectionContact;

  SelectionContact get selectionContact;
  _$ToggleSelectionContactCopyWith<_ToggleSelectionContact> get copyWith;
}

/// @nodoc
abstract class _$DeselectAllContactsCopyWith<$Res> {
  factory _$DeselectAllContactsCopyWith(_DeselectAllContacts value,
          $Res Function(_DeselectAllContacts) then) =
      __$DeselectAllContactsCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeselectAllContactsCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
    implements _$DeselectAllContactsCopyWith<$Res> {
  __$DeselectAllContactsCopyWithImpl(
      _DeselectAllContacts _value, $Res Function(_DeselectAllContacts) _then)
      : super(_value, (v) => _then(v as _DeselectAllContacts));

  @override
  _DeselectAllContacts get _value => super._value as _DeselectAllContacts;
}

/// @nodoc
class _$_DeselectAllContacts implements _DeselectAllContacts {
  const _$_DeselectAllContacts();

  @override
  String toString() {
    return 'ContactWatcherEvent.deselectAllContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeselectAllContacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult contactsReceived(
            Either<ContactsFailure, List<Contact>> contactsEither),
    @required TResult watchAll(),
    @required TResult searchContact(String searchString),
    @required TResult toggleSelectionContact(SelectionContact selectionContact),
    @required TResult deselectAllContacts(),
    @required TResult selectAllContacts(),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return deselectAllContacts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult contactsReceived(
        Either<ContactsFailure, List<Contact>> contactsEither),
    TResult watchAll(),
    TResult searchContact(String searchString),
    TResult toggleSelectionContact(SelectionContact selectionContact),
    TResult deselectAllContacts(),
    TResult selectAllContacts(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deselectAllContacts != null) {
      return deselectAllContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult contactsReceived(_ContactsReceived value),
    @required TResult watchAll(_WatchAll value),
    @required TResult searchContact(_SearchContact value),
    @required TResult toggleSelectionContact(_ToggleSelectionContact value),
    @required TResult deselectAllContacts(_DeselectAllContacts value),
    @required TResult selectAllContacts(_SelectAllContacts value),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return deselectAllContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult contactsReceived(_ContactsReceived value),
    TResult watchAll(_WatchAll value),
    TResult searchContact(_SearchContact value),
    TResult toggleSelectionContact(_ToggleSelectionContact value),
    TResult deselectAllContacts(_DeselectAllContacts value),
    TResult selectAllContacts(_SelectAllContacts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deselectAllContacts != null) {
      return deselectAllContacts(this);
    }
    return orElse();
  }
}

abstract class _DeselectAllContacts implements ContactWatcherEvent {
  const factory _DeselectAllContacts() = _$_DeselectAllContacts;
}

/// @nodoc
abstract class _$SelectAllContactsCopyWith<$Res> {
  factory _$SelectAllContactsCopyWith(
          _SelectAllContacts value, $Res Function(_SelectAllContacts) then) =
      __$SelectAllContactsCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectAllContactsCopyWithImpl<$Res>
    extends _$ContactWatcherEventCopyWithImpl<$Res>
    implements _$SelectAllContactsCopyWith<$Res> {
  __$SelectAllContactsCopyWithImpl(
      _SelectAllContacts _value, $Res Function(_SelectAllContacts) _then)
      : super(_value, (v) => _then(v as _SelectAllContacts));

  @override
  _SelectAllContacts get _value => super._value as _SelectAllContacts;
}

/// @nodoc
class _$_SelectAllContacts implements _SelectAllContacts {
  const _$_SelectAllContacts();

  @override
  String toString() {
    return 'ContactWatcherEvent.selectAllContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectAllContacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult contactsReceived(
            Either<ContactsFailure, List<Contact>> contactsEither),
    @required TResult watchAll(),
    @required TResult searchContact(String searchString),
    @required TResult toggleSelectionContact(SelectionContact selectionContact),
    @required TResult deselectAllContacts(),
    @required TResult selectAllContacts(),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return selectAllContacts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult contactsReceived(
        Either<ContactsFailure, List<Contact>> contactsEither),
    TResult watchAll(),
    TResult searchContact(String searchString),
    TResult toggleSelectionContact(SelectionContact selectionContact),
    TResult deselectAllContacts(),
    TResult selectAllContacts(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectAllContacts != null) {
      return selectAllContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult contactsReceived(_ContactsReceived value),
    @required TResult watchAll(_WatchAll value),
    @required TResult searchContact(_SearchContact value),
    @required TResult toggleSelectionContact(_ToggleSelectionContact value),
    @required TResult deselectAllContacts(_DeselectAllContacts value),
    @required TResult selectAllContacts(_SelectAllContacts value),
  }) {
    assert(contactsReceived != null);
    assert(watchAll != null);
    assert(searchContact != null);
    assert(toggleSelectionContact != null);
    assert(deselectAllContacts != null);
    assert(selectAllContacts != null);
    return selectAllContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult contactsReceived(_ContactsReceived value),
    TResult watchAll(_WatchAll value),
    TResult searchContact(_SearchContact value),
    TResult toggleSelectionContact(_ToggleSelectionContact value),
    TResult deselectAllContacts(_DeselectAllContacts value),
    TResult selectAllContacts(_SelectAllContacts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectAllContacts != null) {
      return selectAllContacts(this);
    }
    return orElse();
  }
}

abstract class _SelectAllContacts implements ContactWatcherEvent {
  const factory _SelectAllContacts() = _$_SelectAllContacts;
}

/// @nodoc
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
  _LoadSuccess loadSuccess(LoadSuccessValues stateValues) {
    return _LoadSuccess(
      stateValues,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ContactsFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContactWatcherState = _$ContactWatcherStateTearOff();

/// @nodoc
mixin _$ContactWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(LoadSuccessValues stateValues),
    @required TResult loadFailure(ContactsFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(LoadSuccessValues stateValues),
    TResult loadFailure(ContactsFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ContactWatcherStateCopyWith<$Res> {
  factory $ContactWatcherStateCopyWith(
          ContactWatcherState value, $Res Function(ContactWatcherState) then) =
      _$ContactWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactWatcherStateCopyWithImpl<$Res>
    implements $ContactWatcherStateCopyWith<$Res> {
  _$ContactWatcherStateCopyWithImpl(this._value, this._then);

  final ContactWatcherState _value;
  // ignore: unused_field
  final $Res Function(ContactWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(LoadSuccessValues stateValues),
    @required TResult loadFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(LoadSuccessValues stateValues),
    TResult loadFailure(ContactsFailure failure),
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
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(LoadSuccessValues stateValues),
    @required TResult loadFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(LoadSuccessValues stateValues),
    TResult loadFailure(ContactsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({LoadSuccessValues stateValues});

  $LoadSuccessValuesCopyWith<$Res> get stateValues;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ContactWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object stateValues = freezed,
  }) {
    return _then(_LoadSuccess(
      stateValues == freezed
          ? _value.stateValues
          : stateValues as LoadSuccessValues,
    ));
  }

  @override
  $LoadSuccessValuesCopyWith<$Res> get stateValues {
    if (_value.stateValues == null) {
      return null;
    }
    return $LoadSuccessValuesCopyWith<$Res>(_value.stateValues, (value) {
      return _then(_value.copyWith(stateValues: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.stateValues) : assert(stateValues != null);

  @override
  final LoadSuccessValues stateValues;

  @override
  String toString() {
    return 'ContactWatcherState.loadSuccess(stateValues: $stateValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.stateValues, stateValues) ||
                const DeepCollectionEquality()
                    .equals(other.stateValues, stateValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateValues);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(LoadSuccessValues stateValues),
    @required TResult loadFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(stateValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(LoadSuccessValues stateValues),
    TResult loadFailure(ContactsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(stateValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ContactWatcherState {
  const factory _LoadSuccess(LoadSuccessValues stateValues) = _$_LoadSuccess;

  LoadSuccessValues get stateValues;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ContactsFailure failure});

  $ContactsFailureCopyWith<$Res> get failure;
}

/// @nodoc
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

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(LoadSuccessValues stateValues),
    @required TResult loadFailure(ContactsFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(LoadSuccessValues stateValues),
    TResult loadFailure(ContactsFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
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

/// @nodoc
class _$LoadSuccessValuesTearOff {
  const _$LoadSuccessValuesTearOff();

// ignore: unused_element
  _LoadSuccessValues call(
      {List<SelectionContact> selectionContactList,
      Filter filter,
      int selectedContactsAmount}) {
    return _LoadSuccessValues(
      selectionContactList: selectionContactList,
      filter: filter,
      selectedContactsAmount: selectedContactsAmount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoadSuccessValues = _$LoadSuccessValuesTearOff();

/// @nodoc
mixin _$LoadSuccessValues {
  List<SelectionContact> get selectionContactList;
  Filter get filter;
  int get selectedContactsAmount;

  $LoadSuccessValuesCopyWith<LoadSuccessValues> get copyWith;
}

/// @nodoc
abstract class $LoadSuccessValuesCopyWith<$Res> {
  factory $LoadSuccessValuesCopyWith(
          LoadSuccessValues value, $Res Function(LoadSuccessValues) then) =
      _$LoadSuccessValuesCopyWithImpl<$Res>;
  $Res call(
      {List<SelectionContact> selectionContactList,
      Filter filter,
      int selectedContactsAmount});

  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$LoadSuccessValuesCopyWithImpl<$Res>
    implements $LoadSuccessValuesCopyWith<$Res> {
  _$LoadSuccessValuesCopyWithImpl(this._value, this._then);

  final LoadSuccessValues _value;
  // ignore: unused_field
  final $Res Function(LoadSuccessValues) _then;

  @override
  $Res call({
    Object selectionContactList = freezed,
    Object filter = freezed,
    Object selectedContactsAmount = freezed,
  }) {
    return _then(_value.copyWith(
      selectionContactList: selectionContactList == freezed
          ? _value.selectionContactList
          : selectionContactList as List<SelectionContact>,
      filter: filter == freezed ? _value.filter : filter as Filter,
      selectedContactsAmount: selectedContactsAmount == freezed
          ? _value.selectedContactsAmount
          : selectedContactsAmount as int,
    ));
  }

  @override
  $FilterCopyWith<$Res> get filter {
    if (_value.filter == null) {
      return null;
    }
    return $FilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
abstract class _$LoadSuccessValuesCopyWith<$Res>
    implements $LoadSuccessValuesCopyWith<$Res> {
  factory _$LoadSuccessValuesCopyWith(
          _LoadSuccessValues value, $Res Function(_LoadSuccessValues) then) =
      __$LoadSuccessValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SelectionContact> selectionContactList,
      Filter filter,
      int selectedContactsAmount});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$LoadSuccessValuesCopyWithImpl<$Res>
    extends _$LoadSuccessValuesCopyWithImpl<$Res>
    implements _$LoadSuccessValuesCopyWith<$Res> {
  __$LoadSuccessValuesCopyWithImpl(
      _LoadSuccessValues _value, $Res Function(_LoadSuccessValues) _then)
      : super(_value, (v) => _then(v as _LoadSuccessValues));

  @override
  _LoadSuccessValues get _value => super._value as _LoadSuccessValues;

  @override
  $Res call({
    Object selectionContactList = freezed,
    Object filter = freezed,
    Object selectedContactsAmount = freezed,
  }) {
    return _then(_LoadSuccessValues(
      selectionContactList: selectionContactList == freezed
          ? _value.selectionContactList
          : selectionContactList as List<SelectionContact>,
      filter: filter == freezed ? _value.filter : filter as Filter,
      selectedContactsAmount: selectedContactsAmount == freezed
          ? _value.selectedContactsAmount
          : selectedContactsAmount as int,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessValues extends _LoadSuccessValues {
  const _$_LoadSuccessValues(
      {this.selectionContactList, this.filter, this.selectedContactsAmount})
      : super._();

  @override
  final List<SelectionContact> selectionContactList;
  @override
  final Filter filter;
  @override
  final int selectedContactsAmount;

  @override
  String toString() {
    return 'LoadSuccessValues(selectionContactList: $selectionContactList, filter: $filter, selectedContactsAmount: $selectedContactsAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessValues &&
            (identical(other.selectionContactList, selectionContactList) ||
                const DeepCollectionEquality().equals(
                    other.selectionContactList, selectionContactList)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.selectedContactsAmount, selectedContactsAmount) ||
                const DeepCollectionEquality().equals(
                    other.selectedContactsAmount, selectedContactsAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectionContactList) ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(selectedContactsAmount);

  @override
  _$LoadSuccessValuesCopyWith<_LoadSuccessValues> get copyWith =>
      __$LoadSuccessValuesCopyWithImpl<_LoadSuccessValues>(this, _$identity);
}

abstract class _LoadSuccessValues extends LoadSuccessValues {
  const _LoadSuccessValues._() : super._();
  const factory _LoadSuccessValues(
      {List<SelectionContact> selectionContactList,
      Filter filter,
      int selectedContactsAmount}) = _$_LoadSuccessValues;

  @override
  List<SelectionContact> get selectionContactList;
  @override
  Filter get filter;
  @override
  int get selectedContactsAmount;
  @override
  _$LoadSuccessValuesCopyWith<_LoadSuccessValues> get copyWith;
}
