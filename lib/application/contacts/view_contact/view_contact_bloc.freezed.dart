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

  _CallNumber callNumber(String number) {
    return _CallNumber(
      number,
    );
  }

  _SendMessage sendMessage(String number) {
    return _SendMessage(
      number,
    );
  }

  _SendMessageThroughApp sendMessageThroughApp(
      {required Phone phone,
      required String region,
      required PhoneAppMessage app}) {
    return _SendMessageThroughApp(
      phone: phone,
      region: region,
      app: app,
    );
  }
}

/// @nodoc
const $ViewContactEvent = _$ViewContactEventTearOff();

/// @nodoc
mixin _$ViewContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, String countryCode) initialize,
    required TResult Function(String number) callNumber,
    required TResult Function(String number) sendMessage,
    required TResult Function(Phone phone, String region, PhoneAppMessage app)
        sendMessageThroughApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
    TResult Function(Phone phone, String region, PhoneAppMessage app)?
        sendMessageThroughApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CallNumber value) callNumber,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendMessageThroughApp value)
        sendMessageThroughApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendMessageThroughApp value)? sendMessageThroughApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewContactEventCopyWith<$Res> {
  factory $ViewContactEventCopyWith(
          ViewContactEvent value, $Res Function(ViewContactEvent) then) =
      _$ViewContactEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewContactEventCopyWithImpl<$Res>
    implements $ViewContactEventCopyWith<$Res> {
  _$ViewContactEventCopyWithImpl(this._value, this._then);

  final ViewContactEvent _value;
  // ignore: unused_field
  final $Res Function(ViewContactEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({Contact contact, String countryCode});

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

  @override
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$_Initialize with DiagnosticableTreeMixin implements _Initialize {
  const _$_Initialize({required this.contact, required this.countryCode});

  @override
  final Contact contact;
  @override
  final String countryCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactEvent.initialize(contact: $contact, countryCode: $countryCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewContactEvent.initialize'))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('countryCode', countryCode));
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
    required TResult Function(String number) callNumber,
    required TResult Function(String number) sendMessage,
    required TResult Function(Phone phone, String region, PhoneAppMessage app)
        sendMessageThroughApp,
  }) {
    return initialize(contact, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
    TResult Function(Phone phone, String region, PhoneAppMessage app)?
        sendMessageThroughApp,
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
    required TResult Function(_CallNumber value) callNumber,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendMessageThroughApp value)
        sendMessageThroughApp,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendMessageThroughApp value)? sendMessageThroughApp,
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

  Contact get contact => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CallNumberCopyWith<$Res> {
  factory _$CallNumberCopyWith(
          _CallNumber value, $Res Function(_CallNumber) then) =
      __$CallNumberCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$CallNumberCopyWithImpl<$Res>
    extends _$ViewContactEventCopyWithImpl<$Res>
    implements _$CallNumberCopyWith<$Res> {
  __$CallNumberCopyWithImpl(
      _CallNumber _value, $Res Function(_CallNumber) _then)
      : super(_value, (v) => _then(v as _CallNumber));

  @override
  _CallNumber get _value => super._value as _CallNumber;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_CallNumber(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CallNumber with DiagnosticableTreeMixin implements _CallNumber {
  const _$_CallNumber(this.number);

  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactEvent.callNumber(number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewContactEvent.callNumber'))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallNumber &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$CallNumberCopyWith<_CallNumber> get copyWith =>
      __$CallNumberCopyWithImpl<_CallNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, String countryCode) initialize,
    required TResult Function(String number) callNumber,
    required TResult Function(String number) sendMessage,
    required TResult Function(Phone phone, String region, PhoneAppMessage app)
        sendMessageThroughApp,
  }) {
    return callNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
    TResult Function(Phone phone, String region, PhoneAppMessage app)?
        sendMessageThroughApp,
    required TResult orElse(),
  }) {
    if (callNumber != null) {
      return callNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CallNumber value) callNumber,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendMessageThroughApp value)
        sendMessageThroughApp,
  }) {
    return callNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendMessageThroughApp value)? sendMessageThroughApp,
    required TResult orElse(),
  }) {
    if (callNumber != null) {
      return callNumber(this);
    }
    return orElse();
  }
}

abstract class _CallNumber implements ViewContactEvent {
  const factory _CallNumber(String number) = _$_CallNumber;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CallNumberCopyWith<_CallNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    extends _$ViewContactEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_SendMessage(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendMessage with DiagnosticableTreeMixin implements _SendMessage {
  const _$_SendMessage(this.number);

  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactEvent.sendMessage(number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewContactEvent.sendMessage'))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMessage &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, String countryCode) initialize,
    required TResult Function(String number) callNumber,
    required TResult Function(String number) sendMessage,
    required TResult Function(Phone phone, String region, PhoneAppMessage app)
        sendMessageThroughApp,
  }) {
    return sendMessage(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
    TResult Function(Phone phone, String region, PhoneAppMessage app)?
        sendMessageThroughApp,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CallNumber value) callNumber,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendMessageThroughApp value)
        sendMessageThroughApp,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendMessageThroughApp value)? sendMessageThroughApp,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ViewContactEvent {
  const factory _SendMessage(String number) = _$_SendMessage;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageThroughAppCopyWith<$Res> {
  factory _$SendMessageThroughAppCopyWith(_SendMessageThroughApp value,
          $Res Function(_SendMessageThroughApp) then) =
      __$SendMessageThroughAppCopyWithImpl<$Res>;
  $Res call({Phone phone, String region, PhoneAppMessage app});
}

/// @nodoc
class __$SendMessageThroughAppCopyWithImpl<$Res>
    extends _$ViewContactEventCopyWithImpl<$Res>
    implements _$SendMessageThroughAppCopyWith<$Res> {
  __$SendMessageThroughAppCopyWithImpl(_SendMessageThroughApp _value,
      $Res Function(_SendMessageThroughApp) _then)
      : super(_value, (v) => _then(v as _SendMessageThroughApp));

  @override
  _SendMessageThroughApp get _value => super._value as _SendMessageThroughApp;

  @override
  $Res call({
    Object? phone = freezed,
    Object? region = freezed,
    Object? app = freezed,
  }) {
    return _then(_SendMessageThroughApp(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      app: app == freezed
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as PhoneAppMessage,
    ));
  }
}

/// @nodoc

class _$_SendMessageThroughApp
    with DiagnosticableTreeMixin
    implements _SendMessageThroughApp {
  const _$_SendMessageThroughApp(
      {required this.phone, required this.region, required this.app});

  @override
  final Phone phone;
  @override
  final String region;
  @override
  final PhoneAppMessage app;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactEvent.sendMessageThroughApp(phone: $phone, region: $region, app: $app)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ViewContactEvent.sendMessageThroughApp'))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('app', app));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMessageThroughApp &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.app, app) ||
                const DeepCollectionEquality().equals(other.app, app)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(app);

  @JsonKey(ignore: true)
  @override
  _$SendMessageThroughAppCopyWith<_SendMessageThroughApp> get copyWith =>
      __$SendMessageThroughAppCopyWithImpl<_SendMessageThroughApp>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, String countryCode) initialize,
    required TResult Function(String number) callNumber,
    required TResult Function(String number) sendMessage,
    required TResult Function(Phone phone, String region, PhoneAppMessage app)
        sendMessageThroughApp,
  }) {
    return sendMessageThroughApp(phone, region, app);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
    TResult Function(Phone phone, String region, PhoneAppMessage app)?
        sendMessageThroughApp,
    required TResult orElse(),
  }) {
    if (sendMessageThroughApp != null) {
      return sendMessageThroughApp(phone, region, app);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CallNumber value) callNumber,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendMessageThroughApp value)
        sendMessageThroughApp,
  }) {
    return sendMessageThroughApp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendMessageThroughApp value)? sendMessageThroughApp,
    required TResult orElse(),
  }) {
    if (sendMessageThroughApp != null) {
      return sendMessageThroughApp(this);
    }
    return orElse();
  }
}

abstract class _SendMessageThroughApp implements ViewContactEvent {
  const factory _SendMessageThroughApp(
      {required Phone phone,
      required String region,
      required PhoneAppMessage app}) = _$_SendMessageThroughApp;

  Phone get phone => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  PhoneAppMessage get app => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendMessageThroughAppCopyWith<_SendMessageThroughApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewContactStateTearOff {
  const _$ViewContactStateTearOff();

  _ViewContactState call(
      {required Contact contact, required ViewContactUnionState unionState}) {
    return _ViewContactState(
      contact: contact,
      unionState: unionState,
    );
  }
}

/// @nodoc
const $ViewContactState = _$ViewContactStateTearOff();

/// @nodoc
mixin _$ViewContactState {
  Contact get contact => throw _privateConstructorUsedError;
  ViewContactUnionState get unionState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewContactStateCopyWith<ViewContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewContactStateCopyWith<$Res> {
  factory $ViewContactStateCopyWith(
          ViewContactState value, $Res Function(ViewContactState) then) =
      _$ViewContactStateCopyWithImpl<$Res>;
  $Res call({Contact contact, ViewContactUnionState unionState});

  $ContactCopyWith<$Res> get contact;
  $ViewContactUnionStateCopyWith<$Res> get unionState;
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
    Object? unionState = freezed,
  }) {
    return _then(_value.copyWith(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      unionState: unionState == freezed
          ? _value.unionState
          : unionState // ignore: cast_nullable_to_non_nullable
              as ViewContactUnionState,
    ));
  }

  @override
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }

  @override
  $ViewContactUnionStateCopyWith<$Res> get unionState {
    return $ViewContactUnionStateCopyWith<$Res>(_value.unionState, (value) {
      return _then(_value.copyWith(unionState: value));
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
  $Res call({Contact contact, ViewContactUnionState unionState});

  @override
  $ContactCopyWith<$Res> get contact;
  @override
  $ViewContactUnionStateCopyWith<$Res> get unionState;
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
    Object? unionState = freezed,
  }) {
    return _then(_ViewContactState(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      unionState: unionState == freezed
          ? _value.unionState
          : unionState // ignore: cast_nullable_to_non_nullable
              as ViewContactUnionState,
    ));
  }
}

/// @nodoc

class _$_ViewContactState extends _ViewContactState
    with DiagnosticableTreeMixin {
  const _$_ViewContactState({required this.contact, required this.unionState})
      : super._();

  @override
  final Contact contact;
  @override
  final ViewContactUnionState unionState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactState(contact: $contact, unionState: $unionState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewContactState'))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('unionState', unionState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewContactState &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.unionState, unionState) ||
                const DeepCollectionEquality()
                    .equals(other.unionState, unionState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(unionState);

  @JsonKey(ignore: true)
  @override
  _$ViewContactStateCopyWith<_ViewContactState> get copyWith =>
      __$ViewContactStateCopyWithImpl<_ViewContactState>(this, _$identity);
}

abstract class _ViewContactState extends ViewContactState {
  const factory _ViewContactState(
      {required Contact contact,
      required ViewContactUnionState unionState}) = _$_ViewContactState;
  const _ViewContactState._() : super._();

  @override
  Contact get contact => throw _privateConstructorUsedError;
  @override
  ViewContactUnionState get unionState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ViewContactStateCopyWith<_ViewContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewContactUnionStateTearOff {
  const _$ViewContactUnionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress(ContactsLoading loadingMsg) {
    return _ActionInProgress(
      loadingMsg,
    );
  }

  _CallSuccessful callSuccessful(String number) {
    return _CallSuccessful(
      number,
    );
  }

  _CallFailure callFailure(CallFailure failure) {
    return _CallFailure(
      failure,
    );
  }

  _MessageFailure messageFailure(String number) {
    return _MessageFailure(
      number,
    );
  }

  _AppMessageFailure appMessageFailure(
      {required String number, required PhoneAppMessage appMessage}) {
    return _AppMessageFailure(
      number: number,
      appMessage: appMessage,
    );
  }
}

/// @nodoc
const $ViewContactUnionState = _$ViewContactUnionStateTearOff();

/// @nodoc
mixin _$ViewContactUnionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(String number) callSuccessful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
    required TResult Function(String number, PhoneAppMessage appMessage)
        appMessageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccessful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    TResult Function(String number, PhoneAppMessage appMessage)?
        appMessageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CallSuccessful value) callSuccessful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
    required TResult Function(_AppMessageFailure value) appMessageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccessful value)? callSuccessful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
    TResult Function(_AppMessageFailure value)? appMessageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewContactUnionStateCopyWith<$Res> {
  factory $ViewContactUnionStateCopyWith(ViewContactUnionState value,
          $Res Function(ViewContactUnionState) then) =
      _$ViewContactUnionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewContactUnionStateCopyWithImpl<$Res>
    implements $ViewContactUnionStateCopyWith<$Res> {
  _$ViewContactUnionStateCopyWithImpl(this._value, this._then);

  final ViewContactUnionState _value;
  // ignore: unused_field
  final $Res Function(ViewContactUnionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ViewContactUnionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactUnionState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewContactUnionState.initial'));
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
    required TResult Function(String number) callSuccessful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
    required TResult Function(String number, PhoneAppMessage appMessage)
        appMessageFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccessful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    TResult Function(String number, PhoneAppMessage appMessage)?
        appMessageFailure,
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
    required TResult Function(_CallSuccessful value) callSuccessful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
    required TResult Function(_AppMessageFailure value) appMessageFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccessful value)? callSuccessful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
    TResult Function(_AppMessageFailure value)? appMessageFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ViewContactUnionState {
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
    extends _$ViewContactUnionStateCopyWithImpl<$Res>
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

class _$_ActionInProgress
    with DiagnosticableTreeMixin
    implements _ActionInProgress {
  const _$_ActionInProgress(this.loadingMsg);

  @override
  final ContactsLoading loadingMsg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactUnionState.actionInProgress(loadingMsg: $loadingMsg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ViewContactUnionState.actionInProgress'))
      ..add(DiagnosticsProperty('loadingMsg', loadingMsg));
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
    required TResult Function(String number) callSuccessful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
    required TResult Function(String number, PhoneAppMessage appMessage)
        appMessageFailure,
  }) {
    return actionInProgress(loadingMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccessful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    TResult Function(String number, PhoneAppMessage appMessage)?
        appMessageFailure,
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
    required TResult Function(_CallSuccessful value) callSuccessful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
    required TResult Function(_AppMessageFailure value) appMessageFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccessful value)? callSuccessful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
    TResult Function(_AppMessageFailure value)? appMessageFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ViewContactUnionState {
  const factory _ActionInProgress(ContactsLoading loadingMsg) =
      _$_ActionInProgress;

  ContactsLoading get loadingMsg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActionInProgressCopyWith<_ActionInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CallSuccessfulCopyWith<$Res> {
  factory _$CallSuccessfulCopyWith(
          _CallSuccessful value, $Res Function(_CallSuccessful) then) =
      __$CallSuccessfulCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$CallSuccessfulCopyWithImpl<$Res>
    extends _$ViewContactUnionStateCopyWithImpl<$Res>
    implements _$CallSuccessfulCopyWith<$Res> {
  __$CallSuccessfulCopyWithImpl(
      _CallSuccessful _value, $Res Function(_CallSuccessful) _then)
      : super(_value, (v) => _then(v as _CallSuccessful));

  @override
  _CallSuccessful get _value => super._value as _CallSuccessful;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_CallSuccessful(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CallSuccessful
    with DiagnosticableTreeMixin
    implements _CallSuccessful {
  const _$_CallSuccessful(this.number);

  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactUnionState.callSuccessful(number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewContactUnionState.callSuccessful'))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallSuccessful &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$CallSuccessfulCopyWith<_CallSuccessful> get copyWith =>
      __$CallSuccessfulCopyWithImpl<_CallSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(String number) callSuccessful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
    required TResult Function(String number, PhoneAppMessage appMessage)
        appMessageFailure,
  }) {
    return callSuccessful(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccessful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    TResult Function(String number, PhoneAppMessage appMessage)?
        appMessageFailure,
    required TResult orElse(),
  }) {
    if (callSuccessful != null) {
      return callSuccessful(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CallSuccessful value) callSuccessful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
    required TResult Function(_AppMessageFailure value) appMessageFailure,
  }) {
    return callSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccessful value)? callSuccessful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
    TResult Function(_AppMessageFailure value)? appMessageFailure,
    required TResult orElse(),
  }) {
    if (callSuccessful != null) {
      return callSuccessful(this);
    }
    return orElse();
  }
}

abstract class _CallSuccessful implements ViewContactUnionState {
  const factory _CallSuccessful(String number) = _$_CallSuccessful;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CallSuccessfulCopyWith<_CallSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CallFailureCopyWith<$Res> {
  factory _$CallFailureCopyWith(
          _CallFailure value, $Res Function(_CallFailure) then) =
      __$CallFailureCopyWithImpl<$Res>;
  $Res call({CallFailure failure});

  $CallFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CallFailureCopyWithImpl<$Res>
    extends _$ViewContactUnionStateCopyWithImpl<$Res>
    implements _$CallFailureCopyWith<$Res> {
  __$CallFailureCopyWithImpl(
      _CallFailure _value, $Res Function(_CallFailure) _then)
      : super(_value, (v) => _then(v as _CallFailure));

  @override
  _CallFailure get _value => super._value as _CallFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_CallFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CallFailure,
    ));
  }

  @override
  $CallFailureCopyWith<$Res> get failure {
    return $CallFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CallFailure with DiagnosticableTreeMixin implements _CallFailure {
  const _$_CallFailure(this.failure);

  @override
  final CallFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactUnionState.callFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewContactUnionState.callFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CallFailureCopyWith<_CallFailure> get copyWith =>
      __$CallFailureCopyWithImpl<_CallFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(String number) callSuccessful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
    required TResult Function(String number, PhoneAppMessage appMessage)
        appMessageFailure,
  }) {
    return callFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccessful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    TResult Function(String number, PhoneAppMessage appMessage)?
        appMessageFailure,
    required TResult orElse(),
  }) {
    if (callFailure != null) {
      return callFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CallSuccessful value) callSuccessful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
    required TResult Function(_AppMessageFailure value) appMessageFailure,
  }) {
    return callFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccessful value)? callSuccessful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
    TResult Function(_AppMessageFailure value)? appMessageFailure,
    required TResult orElse(),
  }) {
    if (callFailure != null) {
      return callFailure(this);
    }
    return orElse();
  }
}

abstract class _CallFailure implements ViewContactUnionState {
  const factory _CallFailure(CallFailure failure) = _$_CallFailure;

  CallFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CallFailureCopyWith<_CallFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MessageFailureCopyWith<$Res> {
  factory _$MessageFailureCopyWith(
          _MessageFailure value, $Res Function(_MessageFailure) then) =
      __$MessageFailureCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$MessageFailureCopyWithImpl<$Res>
    extends _$ViewContactUnionStateCopyWithImpl<$Res>
    implements _$MessageFailureCopyWith<$Res> {
  __$MessageFailureCopyWithImpl(
      _MessageFailure _value, $Res Function(_MessageFailure) _then)
      : super(_value, (v) => _then(v as _MessageFailure));

  @override
  _MessageFailure get _value => super._value as _MessageFailure;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_MessageFailure(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageFailure
    with DiagnosticableTreeMixin
    implements _MessageFailure {
  const _$_MessageFailure(this.number);

  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactUnionState.messageFailure(number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewContactUnionState.messageFailure'))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageFailure &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$MessageFailureCopyWith<_MessageFailure> get copyWith =>
      __$MessageFailureCopyWithImpl<_MessageFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(String number) callSuccessful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
    required TResult Function(String number, PhoneAppMessage appMessage)
        appMessageFailure,
  }) {
    return messageFailure(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccessful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    TResult Function(String number, PhoneAppMessage appMessage)?
        appMessageFailure,
    required TResult orElse(),
  }) {
    if (messageFailure != null) {
      return messageFailure(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CallSuccessful value) callSuccessful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
    required TResult Function(_AppMessageFailure value) appMessageFailure,
  }) {
    return messageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccessful value)? callSuccessful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
    TResult Function(_AppMessageFailure value)? appMessageFailure,
    required TResult orElse(),
  }) {
    if (messageFailure != null) {
      return messageFailure(this);
    }
    return orElse();
  }
}

abstract class _MessageFailure implements ViewContactUnionState {
  const factory _MessageFailure(String number) = _$_MessageFailure;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessageFailureCopyWith<_MessageFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AppMessageFailureCopyWith<$Res> {
  factory _$AppMessageFailureCopyWith(
          _AppMessageFailure value, $Res Function(_AppMessageFailure) then) =
      __$AppMessageFailureCopyWithImpl<$Res>;
  $Res call({String number, PhoneAppMessage appMessage});
}

/// @nodoc
class __$AppMessageFailureCopyWithImpl<$Res>
    extends _$ViewContactUnionStateCopyWithImpl<$Res>
    implements _$AppMessageFailureCopyWith<$Res> {
  __$AppMessageFailureCopyWithImpl(
      _AppMessageFailure _value, $Res Function(_AppMessageFailure) _then)
      : super(_value, (v) => _then(v as _AppMessageFailure));

  @override
  _AppMessageFailure get _value => super._value as _AppMessageFailure;

  @override
  $Res call({
    Object? number = freezed,
    Object? appMessage = freezed,
  }) {
    return _then(_AppMessageFailure(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      appMessage: appMessage == freezed
          ? _value.appMessage
          : appMessage // ignore: cast_nullable_to_non_nullable
              as PhoneAppMessage,
    ));
  }
}

/// @nodoc

class _$_AppMessageFailure
    with DiagnosticableTreeMixin
    implements _AppMessageFailure {
  const _$_AppMessageFailure({required this.number, required this.appMessage});

  @override
  final String number;
  @override
  final PhoneAppMessage appMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewContactUnionState.appMessageFailure(number: $number, appMessage: $appMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ViewContactUnionState.appMessageFailure'))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('appMessage', appMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppMessageFailure &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.appMessage, appMessage) ||
                const DeepCollectionEquality()
                    .equals(other.appMessage, appMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(appMessage);

  @JsonKey(ignore: true)
  @override
  _$AppMessageFailureCopyWith<_AppMessageFailure> get copyWith =>
      __$AppMessageFailureCopyWithImpl<_AppMessageFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(String number) callSuccessful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
    required TResult Function(String number, PhoneAppMessage appMessage)
        appMessageFailure,
  }) {
    return appMessageFailure(number, appMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccessful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    TResult Function(String number, PhoneAppMessage appMessage)?
        appMessageFailure,
    required TResult orElse(),
  }) {
    if (appMessageFailure != null) {
      return appMessageFailure(number, appMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CallSuccessful value) callSuccessful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
    required TResult Function(_AppMessageFailure value) appMessageFailure,
  }) {
    return appMessageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccessful value)? callSuccessful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
    TResult Function(_AppMessageFailure value)? appMessageFailure,
    required TResult orElse(),
  }) {
    if (appMessageFailure != null) {
      return appMessageFailure(this);
    }
    return orElse();
  }
}

abstract class _AppMessageFailure implements ViewContactUnionState {
  const factory _AppMessageFailure(
      {required String number,
      required PhoneAppMessage appMessage}) = _$_AppMessageFailure;

  String get number => throw _privateConstructorUsedError;
  PhoneAppMessage get appMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AppMessageFailureCopyWith<_AppMessageFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
