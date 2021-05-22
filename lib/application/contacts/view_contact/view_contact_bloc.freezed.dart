// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'view_contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewContactEventTearOff {
  const _$ViewContactEventTearOff();

  _Initialize initialize(
      {required Contact contact, required String countryCode}) {
    return _Initialize(
      contact: contact,
      countryCode: countryCode,
    );
  }
}

/// @nodoc
const $ViewContactEvent = _$ViewContactEventTearOff();

/// @nodoc
mixin _$ViewContactEvent {
  Contact get contact => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, String countryCode) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewContactEventCopyWith<ViewContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewContactEventCopyWith<$Res> {
  factory $ViewContactEventCopyWith(
          ViewContactEvent value, $Res Function(ViewContactEvent) then) =
      _$ViewContactEventCopyWithImpl<$Res>;
  $Res call({Contact contact, String countryCode});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$ViewContactEventCopyWithImpl<$Res>
    implements $ViewContactEventCopyWith<$Res> {
  _$ViewContactEventCopyWithImpl(this._value, this._then);

  final ViewContactEvent _value;
  // ignore: unused_field
  final $Res Function(ViewContactEvent) _then;

  @override
  $Res call({
    Object? contact = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res>
    implements $ViewContactEventCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  @override
  $Res call({Contact contact, String countryCode});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    extends _$ViewContactEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object? contact = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_Initialize(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize({required this.contact, required this.countryCode});

  @override
  final Contact contact;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'ViewContactEvent.initialize(contact: $contact, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, String countryCode) initialize,
  }) {
    return initialize(contact, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(contact, countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ViewContactEvent {
  const factory _Initialize(
      {required Contact contact, required String countryCode}) = _$_Initialize;

  @override
  Contact get contact => throw _privateConstructorUsedError;
  @override
  String get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewContactStateTearOff {
  const _$ViewContactStateTearOff();

  _ViewContactState call({required Contact contact}) {
    return _ViewContactState(
      contact: contact,
    );
  }
}

/// @nodoc
const $ViewContactState = _$ViewContactStateTearOff();

/// @nodoc
mixin _$ViewContactState {
  Contact get contact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewContactStateCopyWith<ViewContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewContactStateCopyWith<$Res> {
  factory $ViewContactStateCopyWith(
          ViewContactState value, $Res Function(ViewContactState) then) =
      _$ViewContactStateCopyWithImpl<$Res>;
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$ViewContactStateCopyWithImpl<$Res>
    implements $ViewContactStateCopyWith<$Res> {
  _$ViewContactStateCopyWithImpl(this._value, this._then);

  final ViewContactState _value;
  // ignore: unused_field
  final $Res Function(ViewContactState) _then;

  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_value.copyWith(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }

  @override
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
abstract class _$ViewContactStateCopyWith<$Res>
    implements $ViewContactStateCopyWith<$Res> {
  factory _$ViewContactStateCopyWith(
          _ViewContactState value, $Res Function(_ViewContactState) then) =
      __$ViewContactStateCopyWithImpl<$Res>;
  @override
  $Res call({Contact contact});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$ViewContactStateCopyWithImpl<$Res>
    extends _$ViewContactStateCopyWithImpl<$Res>
    implements _$ViewContactStateCopyWith<$Res> {
  __$ViewContactStateCopyWithImpl(
      _ViewContactState _value, $Res Function(_ViewContactState) _then)
      : super(_value, (v) => _then(v as _ViewContactState));

  @override
  _ViewContactState get _value => super._value as _ViewContactState;

  @override
  $Res call({
    Object? contact = freezed,
  }) {
    return _then(_ViewContactState(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_ViewContactState extends _ViewContactState {
  const _$_ViewContactState({required this.contact}) : super._();

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ViewContactState(contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewContactState &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality().equals(other.contact, contact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contact);

  @JsonKey(ignore: true)
  @override
  _$ViewContactStateCopyWith<_ViewContactState> get copyWith =>
      __$ViewContactStateCopyWithImpl<_ViewContactState>(this, _$identity);
}

abstract class _ViewContactState extends ViewContactState {
  const factory _ViewContactState({required Contact contact}) =
      _$_ViewContactState;
  const _ViewContactState._() : super._();

  @override
  Contact get contact => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ViewContactStateCopyWith<_ViewContactState> get copyWith =>
      throw _privateConstructorUsedError;
}
