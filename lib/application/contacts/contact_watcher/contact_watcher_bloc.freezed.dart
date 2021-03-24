// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactWatcherEventTearOff {
  const _$ContactWatcherEventTearOff();

  _ContactsReceived contactsReceived(
      Either<ContactsFailure, List<Contact>> contactsEither) {
    return _ContactsReceived(
      contactsEither,
    );
  }

  _WatchAll watchAll() {
    return const _WatchAll();
  }

  _SearchContact searchContact(String searchString) {
    return _SearchContact(
      searchString,
    );
  }

  _ToggleSelectionContact toggleSelectionContact(
      SelectionContact selectionContact) {
    return _ToggleSelectionContact(
      selectionContact,
    );
  }

  _DeselectAllContacts deselectAllContacts() {
    return const _DeselectAllContacts();
  }

  _SelectAllContacts selectAllContacts() {
    return const _SelectAllContacts();
  }
}

/// @nodoc
const $ContactWatcherEvent = _$ContactWatcherEventTearOff();

/// @nodoc
mixin _$ContactWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<ContactsFailure, List<Contact>> contactsEither)
        contactsReceived,
    required TResult Function() watchAll,
    required TResult Function(String searchString) searchContact,
    required TResult Function(SelectionContact selectionContact)
        toggleSelectionContact,
    required TResult Function() deselectAllContacts,
    required TResult Function() selectAllContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<ContactsFailure, List<Contact>> contactsEither)?
        contactsReceived,
    TResult Function()? watchAll,
    TResult Function(String searchString)? searchContact,
    TResult Function(SelectionContact selectionContact)? toggleSelectionContact,
    TResult Function()? deselectAllContacts,
    TResult Function()? selectAllContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsReceived value) contactsReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_SearchContact value) searchContact,
    required TResult Function(_ToggleSelectionContact value)
        toggleSelectionContact,
    required TResult Function(_DeselectAllContacts value) deselectAllContacts,
    required TResult Function(_SelectAllContacts value) selectAllContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsReceived value)? contactsReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_SearchContact value)? searchContact,
    TResult Function(_ToggleSelectionContact value)? toggleSelectionContact,
    TResult Function(_DeselectAllContacts value)? deselectAllContacts,
    TResult Function(_SelectAllContacts value)? selectAllContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? contactsEither = freezed,
  }) {
    return _then(_ContactsReceived(
      contactsEither == freezed
          ? _value.contactsEither
          : contactsEither // ignore: cast_nullable_to_non_nullable
              as Either<ContactsFailure, List<Contact>>,
    ));
  }
}

/// @nodoc
class _$_ContactsReceived implements _ContactsReceived {
  const _$_ContactsReceived(this.contactsEither);

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

  @JsonKey(ignore: true)
  @override
  _$ContactsReceivedCopyWith<_ContactsReceived> get copyWith =>
      __$ContactsReceivedCopyWithImpl<_ContactsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<ContactsFailure, List<Contact>> contactsEither)
        contactsReceived,
    required TResult Function() watchAll,
    required TResult Function(String searchString) searchContact,
    required TResult Function(SelectionContact selectionContact)
        toggleSelectionContact,
    required TResult Function() deselectAllContacts,
    required TResult Function() selectAllContacts,
  }) {
    return contactsReceived(contactsEither);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<ContactsFailure, List<Contact>> contactsEither)?
        contactsReceived,
    TResult Function()? watchAll,
    TResult Function(String searchString)? searchContact,
    TResult Function(SelectionContact selectionContact)? toggleSelectionContact,
    TResult Function()? deselectAllContacts,
    TResult Function()? selectAllContacts,
    required TResult orElse(),
  }) {
    if (contactsReceived != null) {
      return contactsReceived(contactsEither);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsReceived value) contactsReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_SearchContact value) searchContact,
    required TResult Function(_ToggleSelectionContact value)
        toggleSelectionContact,
    required TResult Function(_DeselectAllContacts value) deselectAllContacts,
    required TResult Function(_SelectAllContacts value) selectAllContacts,
  }) {
    return contactsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsReceived value)? contactsReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_SearchContact value)? searchContact,
    TResult Function(_ToggleSelectionContact value)? toggleSelectionContact,
    TResult Function(_DeselectAllContacts value)? deselectAllContacts,
    TResult Function(_SelectAllContacts value)? selectAllContacts,
    required TResult orElse(),
  }) {
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

  Either<ContactsFailure, List<Contact>> get contactsEither =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ContactsReceivedCopyWith<_ContactsReceived> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<ContactsFailure, List<Contact>> contactsEither)
        contactsReceived,
    required TResult Function() watchAll,
    required TResult Function(String searchString) searchContact,
    required TResult Function(SelectionContact selectionContact)
        toggleSelectionContact,
    required TResult Function() deselectAllContacts,
    required TResult Function() selectAllContacts,
  }) {
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<ContactsFailure, List<Contact>> contactsEither)?
        contactsReceived,
    TResult Function()? watchAll,
    TResult Function(String searchString)? searchContact,
    TResult Function(SelectionContact selectionContact)? toggleSelectionContact,
    TResult Function()? deselectAllContacts,
    TResult Function()? selectAllContacts,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsReceived value) contactsReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_SearchContact value) searchContact,
    required TResult Function(_ToggleSelectionContact value)
        toggleSelectionContact,
    required TResult Function(_DeselectAllContacts value) deselectAllContacts,
    required TResult Function(_SelectAllContacts value) selectAllContacts,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsReceived value)? contactsReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_SearchContact value)? searchContact,
    TResult Function(_ToggleSelectionContact value)? toggleSelectionContact,
    TResult Function(_DeselectAllContacts value)? deselectAllContacts,
    TResult Function(_SelectAllContacts value)? selectAllContacts,
    required TResult orElse(),
  }) {
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
    Object? searchString = freezed,
  }) {
    return _then(_SearchContact(
      searchString == freezed
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SearchContact implements _SearchContact {
  const _$_SearchContact(this.searchString);

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

  @JsonKey(ignore: true)
  @override
  _$SearchContactCopyWith<_SearchContact> get copyWith =>
      __$SearchContactCopyWithImpl<_SearchContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<ContactsFailure, List<Contact>> contactsEither)
        contactsReceived,
    required TResult Function() watchAll,
    required TResult Function(String searchString) searchContact,
    required TResult Function(SelectionContact selectionContact)
        toggleSelectionContact,
    required TResult Function() deselectAllContacts,
    required TResult Function() selectAllContacts,
  }) {
    return searchContact(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<ContactsFailure, List<Contact>> contactsEither)?
        contactsReceived,
    TResult Function()? watchAll,
    TResult Function(String searchString)? searchContact,
    TResult Function(SelectionContact selectionContact)? toggleSelectionContact,
    TResult Function()? deselectAllContacts,
    TResult Function()? selectAllContacts,
    required TResult orElse(),
  }) {
    if (searchContact != null) {
      return searchContact(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsReceived value) contactsReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_SearchContact value) searchContact,
    required TResult Function(_ToggleSelectionContact value)
        toggleSelectionContact,
    required TResult Function(_DeselectAllContacts value) deselectAllContacts,
    required TResult Function(_SelectAllContacts value) selectAllContacts,
  }) {
    return searchContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsReceived value)? contactsReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_SearchContact value)? searchContact,
    TResult Function(_ToggleSelectionContact value)? toggleSelectionContact,
    TResult Function(_DeselectAllContacts value)? deselectAllContacts,
    TResult Function(_SelectAllContacts value)? selectAllContacts,
    required TResult orElse(),
  }) {
    if (searchContact != null) {
      return searchContact(this);
    }
    return orElse();
  }
}

abstract class _SearchContact implements ContactWatcherEvent {
  const factory _SearchContact(String searchString) = _$_SearchContact;

  String get searchString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchContactCopyWith<_SearchContact> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? selectionContact = freezed,
  }) {
    return _then(_ToggleSelectionContact(
      selectionContact == freezed
          ? _value.selectionContact
          : selectionContact // ignore: cast_nullable_to_non_nullable
              as SelectionContact,
    ));
  }
}

/// @nodoc
class _$_ToggleSelectionContact implements _ToggleSelectionContact {
  const _$_ToggleSelectionContact(this.selectionContact);

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

  @JsonKey(ignore: true)
  @override
  _$ToggleSelectionContactCopyWith<_ToggleSelectionContact> get copyWith =>
      __$ToggleSelectionContactCopyWithImpl<_ToggleSelectionContact>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<ContactsFailure, List<Contact>> contactsEither)
        contactsReceived,
    required TResult Function() watchAll,
    required TResult Function(String searchString) searchContact,
    required TResult Function(SelectionContact selectionContact)
        toggleSelectionContact,
    required TResult Function() deselectAllContacts,
    required TResult Function() selectAllContacts,
  }) {
    return toggleSelectionContact(selectionContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<ContactsFailure, List<Contact>> contactsEither)?
        contactsReceived,
    TResult Function()? watchAll,
    TResult Function(String searchString)? searchContact,
    TResult Function(SelectionContact selectionContact)? toggleSelectionContact,
    TResult Function()? deselectAllContacts,
    TResult Function()? selectAllContacts,
    required TResult orElse(),
  }) {
    if (toggleSelectionContact != null) {
      return toggleSelectionContact(selectionContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsReceived value) contactsReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_SearchContact value) searchContact,
    required TResult Function(_ToggleSelectionContact value)
        toggleSelectionContact,
    required TResult Function(_DeselectAllContacts value) deselectAllContacts,
    required TResult Function(_SelectAllContacts value) selectAllContacts,
  }) {
    return toggleSelectionContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsReceived value)? contactsReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_SearchContact value)? searchContact,
    TResult Function(_ToggleSelectionContact value)? toggleSelectionContact,
    TResult Function(_DeselectAllContacts value)? deselectAllContacts,
    TResult Function(_SelectAllContacts value)? selectAllContacts,
    required TResult orElse(),
  }) {
    if (toggleSelectionContact != null) {
      return toggleSelectionContact(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelectionContact implements ContactWatcherEvent {
  const factory _ToggleSelectionContact(SelectionContact selectionContact) =
      _$_ToggleSelectionContact;

  SelectionContact get selectionContact => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToggleSelectionContactCopyWith<_ToggleSelectionContact> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<ContactsFailure, List<Contact>> contactsEither)
        contactsReceived,
    required TResult Function() watchAll,
    required TResult Function(String searchString) searchContact,
    required TResult Function(SelectionContact selectionContact)
        toggleSelectionContact,
    required TResult Function() deselectAllContacts,
    required TResult Function() selectAllContacts,
  }) {
    return deselectAllContacts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<ContactsFailure, List<Contact>> contactsEither)?
        contactsReceived,
    TResult Function()? watchAll,
    TResult Function(String searchString)? searchContact,
    TResult Function(SelectionContact selectionContact)? toggleSelectionContact,
    TResult Function()? deselectAllContacts,
    TResult Function()? selectAllContacts,
    required TResult orElse(),
  }) {
    if (deselectAllContacts != null) {
      return deselectAllContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsReceived value) contactsReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_SearchContact value) searchContact,
    required TResult Function(_ToggleSelectionContact value)
        toggleSelectionContact,
    required TResult Function(_DeselectAllContacts value) deselectAllContacts,
    required TResult Function(_SelectAllContacts value) selectAllContacts,
  }) {
    return deselectAllContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsReceived value)? contactsReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_SearchContact value)? searchContact,
    TResult Function(_ToggleSelectionContact value)? toggleSelectionContact,
    TResult Function(_DeselectAllContacts value)? deselectAllContacts,
    TResult Function(_SelectAllContacts value)? selectAllContacts,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<ContactsFailure, List<Contact>> contactsEither)
        contactsReceived,
    required TResult Function() watchAll,
    required TResult Function(String searchString) searchContact,
    required TResult Function(SelectionContact selectionContact)
        toggleSelectionContact,
    required TResult Function() deselectAllContacts,
    required TResult Function() selectAllContacts,
  }) {
    return selectAllContacts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<ContactsFailure, List<Contact>> contactsEither)?
        contactsReceived,
    TResult Function()? watchAll,
    TResult Function(String searchString)? searchContact,
    TResult Function(SelectionContact selectionContact)? toggleSelectionContact,
    TResult Function()? deselectAllContacts,
    TResult Function()? selectAllContacts,
    required TResult orElse(),
  }) {
    if (selectAllContacts != null) {
      return selectAllContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsReceived value) contactsReceived,
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_SearchContact value) searchContact,
    required TResult Function(_ToggleSelectionContact value)
        toggleSelectionContact,
    required TResult Function(_DeselectAllContacts value) deselectAllContacts,
    required TResult Function(_SelectAllContacts value) selectAllContacts,
  }) {
    return selectAllContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsReceived value)? contactsReceived,
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_SearchContact value)? searchContact,
    TResult Function(_ToggleSelectionContact value)? toggleSelectionContact,
    TResult Function(_DeselectAllContacts value)? deselectAllContacts,
    TResult Function(_SelectAllContacts value)? selectAllContacts,
    required TResult orElse(),
  }) {
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

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(LoadSuccessValues stateValues) {
    return _LoadSuccess(
      stateValues,
    );
  }

  _LoadFailure loadFailure(ContactsFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $ContactWatcherState = _$ContactWatcherStateTearOff();

/// @nodoc
mixin _$ContactWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(LoadSuccessValues stateValues) loadSuccess,
    required TResult Function(ContactsFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(LoadSuccessValues stateValues)? loadSuccess,
    TResult Function(ContactsFailure failure)? loadFailure,
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(LoadSuccessValues stateValues) loadSuccess,
    required TResult Function(ContactsFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(LoadSuccessValues stateValues)? loadSuccess,
    TResult Function(ContactsFailure failure)? loadFailure,
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(LoadSuccessValues stateValues) loadSuccess,
    required TResult Function(ContactsFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(LoadSuccessValues stateValues)? loadSuccess,
    TResult Function(ContactsFailure failure)? loadFailure,
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
    Object? stateValues = freezed,
  }) {
    return _then(_LoadSuccess(
      stateValues == freezed
          ? _value.stateValues
          : stateValues // ignore: cast_nullable_to_non_nullable
              as LoadSuccessValues,
    ));
  }

  @override
  $LoadSuccessValuesCopyWith<$Res> get stateValues {
    return $LoadSuccessValuesCopyWith<$Res>(_value.stateValues, (value) {
      return _then(_value.copyWith(stateValues: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.stateValues);

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

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(LoadSuccessValues stateValues) loadSuccess,
    required TResult Function(ContactsFailure failure) loadFailure,
  }) {
    return loadSuccess(stateValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(LoadSuccessValues stateValues)? loadSuccess,
    TResult Function(ContactsFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(stateValues);
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

abstract class _LoadSuccess implements ContactWatcherState {
  const factory _LoadSuccess(LoadSuccessValues stateValues) = _$_LoadSuccess;

  LoadSuccessValues get stateValues => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
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
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

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

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(LoadSuccessValues stateValues) loadSuccess,
    required TResult Function(ContactsFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(LoadSuccessValues stateValues)? loadSuccess,
    TResult Function(ContactsFailure failure)? loadFailure,
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

abstract class _LoadFailure implements ContactWatcherState {
  const factory _LoadFailure(ContactsFailure failure) = _$_LoadFailure;

  ContactsFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoadSuccessValuesTearOff {
  const _$LoadSuccessValuesTearOff();

  _LoadSuccessValues call(
      {required List<SelectionContact> selectionContactList,
      Filter? filter,
      required int selectedContactsAmount}) {
    return _LoadSuccessValues(
      selectionContactList: selectionContactList,
      filter: filter,
      selectedContactsAmount: selectedContactsAmount,
    );
  }
}

/// @nodoc
const $LoadSuccessValues = _$LoadSuccessValuesTearOff();

/// @nodoc
mixin _$LoadSuccessValues {
  List<SelectionContact> get selectionContactList =>
      throw _privateConstructorUsedError;
  Filter? get filter => throw _privateConstructorUsedError;
  int get selectedContactsAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadSuccessValuesCopyWith<LoadSuccessValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadSuccessValuesCopyWith<$Res> {
  factory $LoadSuccessValuesCopyWith(
          LoadSuccessValues value, $Res Function(LoadSuccessValues) then) =
      _$LoadSuccessValuesCopyWithImpl<$Res>;
  $Res call(
      {List<SelectionContact> selectionContactList,
      Filter? filter,
      int selectedContactsAmount});

  $FilterCopyWith<$Res>? get filter;
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
    Object? selectionContactList = freezed,
    Object? filter = freezed,
    Object? selectedContactsAmount = freezed,
  }) {
    return _then(_value.copyWith(
      selectionContactList: selectionContactList == freezed
          ? _value.selectionContactList
          : selectionContactList // ignore: cast_nullable_to_non_nullable
              as List<SelectionContact>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter?,
      selectedContactsAmount: selectedContactsAmount == freezed
          ? _value.selectedContactsAmount
          : selectedContactsAmount // ignore: cast_nullable_to_non_nullable
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
abstract class _$LoadSuccessValuesCopyWith<$Res>
    implements $LoadSuccessValuesCopyWith<$Res> {
  factory _$LoadSuccessValuesCopyWith(
          _LoadSuccessValues value, $Res Function(_LoadSuccessValues) then) =
      __$LoadSuccessValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SelectionContact> selectionContactList,
      Filter? filter,
      int selectedContactsAmount});

  @override
  $FilterCopyWith<$Res>? get filter;
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
    Object? selectionContactList = freezed,
    Object? filter = freezed,
    Object? selectedContactsAmount = freezed,
  }) {
    return _then(_LoadSuccessValues(
      selectionContactList: selectionContactList == freezed
          ? _value.selectionContactList
          : selectionContactList // ignore: cast_nullable_to_non_nullable
              as List<SelectionContact>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter?,
      selectedContactsAmount: selectedContactsAmount == freezed
          ? _value.selectedContactsAmount
          : selectedContactsAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessValues extends _LoadSuccessValues {
  const _$_LoadSuccessValues(
      {required this.selectionContactList,
      this.filter,
      required this.selectedContactsAmount})
      : super._();

  @override
  final List<SelectionContact> selectionContactList;
  @override
  final Filter? filter;
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

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessValuesCopyWith<_LoadSuccessValues> get copyWith =>
      __$LoadSuccessValuesCopyWithImpl<_LoadSuccessValues>(this, _$identity);
}

abstract class _LoadSuccessValues extends LoadSuccessValues {
  const factory _LoadSuccessValues(
      {required List<SelectionContact> selectionContactList,
      Filter? filter,
      required int selectedContactsAmount}) = _$_LoadSuccessValues;
  const _LoadSuccessValues._() : super._();

  @override
  List<SelectionContact> get selectionContactList =>
      throw _privateConstructorUsedError;
  @override
  Filter? get filter => throw _privateConstructorUsedError;
  @override
  int get selectedContactsAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadSuccessValuesCopyWith<_LoadSuccessValues> get copyWith =>
      throw _privateConstructorUsedError;
}
