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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_CallNumber value) callNumber,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
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
    required TResult Function(String number) callNumber,
    required TResult Function(String number) sendMessage,
  }) {
    return initialize(contact, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
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
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
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

class _$_CallNumber implements _CallNumber {
  const _$_CallNumber(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'ViewContactEvent.callNumber(number: $number)';
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
  }) {
    return callNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
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
  }) {
    return callNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
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

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'ViewContactEvent.sendMessage(number: $number)';
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
  }) {
    return sendMessage(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, String countryCode)? initialize,
    TResult Function(String number)? callNumber,
    TResult Function(String number)? sendMessage,
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
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_CallNumber value)? callNumber,
    TResult Function(_SendMessage value)? sendMessage,
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

class _$_ViewContactState extends _ViewContactState {
  const _$_ViewContactState({required this.contact, required this.unionState})
      : super._();

  @override
  final Contact contact;
  @override
  final ViewContactUnionState unionState;

  @override
  String toString() {
    return 'ViewContactState(contact: $contact, unionState: $unionState)';
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

  _CallSuccesful callSuccesful(String number) {
    return _CallSuccesful(
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
}

/// @nodoc
const $ViewContactUnionState = _$ViewContactUnionStateTearOff();

/// @nodoc
mixin _$ViewContactUnionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(String number) callSuccesful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccesful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CallSuccesful value) callSuccesful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccesful value)? callSuccesful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
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

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ViewContactUnionState.initial()';
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
    required TResult Function(String number) callSuccesful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccesful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
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
    required TResult Function(_CallSuccesful value) callSuccesful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccesful value)? callSuccesful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
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

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress(this.loadingMsg);

  @override
  final ContactsLoading loadingMsg;

  @override
  String toString() {
    return 'ViewContactUnionState.actionInProgress(loadingMsg: $loadingMsg)';
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
    required TResult Function(String number) callSuccesful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
  }) {
    return actionInProgress(loadingMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccesful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
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
    required TResult Function(_CallSuccesful value) callSuccesful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccesful value)? callSuccesful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
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
abstract class _$CallSuccesfulCopyWith<$Res> {
  factory _$CallSuccesfulCopyWith(
          _CallSuccesful value, $Res Function(_CallSuccesful) then) =
      __$CallSuccesfulCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$CallSuccesfulCopyWithImpl<$Res>
    extends _$ViewContactUnionStateCopyWithImpl<$Res>
    implements _$CallSuccesfulCopyWith<$Res> {
  __$CallSuccesfulCopyWithImpl(
      _CallSuccesful _value, $Res Function(_CallSuccesful) _then)
      : super(_value, (v) => _then(v as _CallSuccesful));

  @override
  _CallSuccesful get _value => super._value as _CallSuccesful;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_CallSuccesful(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CallSuccesful implements _CallSuccesful {
  const _$_CallSuccesful(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'ViewContactUnionState.callSuccesful(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallSuccesful &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$CallSuccesfulCopyWith<_CallSuccesful> get copyWith =>
      __$CallSuccesfulCopyWithImpl<_CallSuccesful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ContactsLoading loadingMsg) actionInProgress,
    required TResult Function(String number) callSuccesful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
  }) {
    return callSuccesful(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccesful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
    required TResult orElse(),
  }) {
    if (callSuccesful != null) {
      return callSuccesful(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_CallSuccesful value) callSuccesful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
  }) {
    return callSuccesful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccesful value)? callSuccesful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
    required TResult orElse(),
  }) {
    if (callSuccesful != null) {
      return callSuccesful(this);
    }
    return orElse();
  }
}

abstract class _CallSuccesful implements ViewContactUnionState {
  const factory _CallSuccesful(String number) = _$_CallSuccesful;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CallSuccesfulCopyWith<_CallSuccesful> get copyWith =>
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

class _$_CallFailure implements _CallFailure {
  const _$_CallFailure(this.failure);

  @override
  final CallFailure failure;

  @override
  String toString() {
    return 'ViewContactUnionState.callFailure(failure: $failure)';
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
    required TResult Function(String number) callSuccesful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
  }) {
    return callFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccesful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
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
    required TResult Function(_CallSuccesful value) callSuccesful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
  }) {
    return callFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccesful value)? callSuccesful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
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

class _$_MessageFailure implements _MessageFailure {
  const _$_MessageFailure(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'ViewContactUnionState.messageFailure(number: $number)';
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
    required TResult Function(String number) callSuccesful,
    required TResult Function(CallFailure failure) callFailure,
    required TResult Function(String number) messageFailure,
  }) {
    return messageFailure(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ContactsLoading loadingMsg)? actionInProgress,
    TResult Function(String number)? callSuccesful,
    TResult Function(CallFailure failure)? callFailure,
    TResult Function(String number)? messageFailure,
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
    required TResult Function(_CallSuccesful value) callSuccesful,
    required TResult Function(_CallFailure value) callFailure,
    required TResult Function(_MessageFailure value) messageFailure,
  }) {
    return messageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_CallSuccesful value)? callSuccesful,
    TResult Function(_CallFailure value)? callFailure,
    TResult Function(_MessageFailure value)? messageFailure,
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
