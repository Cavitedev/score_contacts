// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contacts_loading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactsLoadingTearOff {
  const _$ContactsLoadingTearOff();

  _LoadingContacts loadingContacts({int? amount}) {
    return _LoadingContacts(
      amount: amount,
    );
  }

  _DeletingContacts deletingContacts({required int amount}) {
    return _DeletingContacts(
      amount: amount,
    );
  }

  _CallingNumber callingNumber({required String number}) {
    return _CallingNumber(
      number: number,
    );
  }

  _SendingMessage sendingMessage({required String number}) {
    return _SendingMessage(
      number: number,
    );
  }
}

/// @nodoc
const $ContactsLoading = _$ContactsLoadingTearOff();

/// @nodoc
mixin _$ContactsLoading {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? amount) loadingContacts,
    required TResult Function(int amount) deletingContacts,
    required TResult Function(String number) callingNumber,
    required TResult Function(String number) sendingMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? amount)? loadingContacts,
    TResult Function(int amount)? deletingContacts,
    TResult Function(String number)? callingNumber,
    TResult Function(String number)? sendingMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingContacts value) loadingContacts,
    required TResult Function(_DeletingContacts value) deletingContacts,
    required TResult Function(_CallingNumber value) callingNumber,
    required TResult Function(_SendingMessage value) sendingMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingContacts value)? loadingContacts,
    TResult Function(_DeletingContacts value)? deletingContacts,
    TResult Function(_CallingNumber value)? callingNumber,
    TResult Function(_SendingMessage value)? sendingMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsLoadingCopyWith<$Res> {
  factory $ContactsLoadingCopyWith(
          ContactsLoading value, $Res Function(ContactsLoading) then) =
      _$ContactsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsLoadingCopyWithImpl<$Res>
    implements $ContactsLoadingCopyWith<$Res> {
  _$ContactsLoadingCopyWithImpl(this._value, this._then);

  final ContactsLoading _value;
  // ignore: unused_field
  final $Res Function(ContactsLoading) _then;
}

/// @nodoc
abstract class _$LoadingContactsCopyWith<$Res> {
  factory _$LoadingContactsCopyWith(
          _LoadingContacts value, $Res Function(_LoadingContacts) then) =
      __$LoadingContactsCopyWithImpl<$Res>;
  $Res call({int? amount});
}

/// @nodoc
class __$LoadingContactsCopyWithImpl<$Res>
    extends _$ContactsLoadingCopyWithImpl<$Res>
    implements _$LoadingContactsCopyWith<$Res> {
  __$LoadingContactsCopyWithImpl(
      _LoadingContacts _value, $Res Function(_LoadingContacts) _then)
      : super(_value, (v) => _then(v as _LoadingContacts));

  @override
  _LoadingContacts get _value => super._value as _LoadingContacts;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_LoadingContacts(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_LoadingContacts implements _LoadingContacts {
  const _$_LoadingContacts({this.amount});

  @override
  final int? amount;

  @override
  String toString() {
    return 'ContactsLoading.loadingContacts(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingContacts &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$LoadingContactsCopyWith<_LoadingContacts> get copyWith =>
      __$LoadingContactsCopyWithImpl<_LoadingContacts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? amount) loadingContacts,
    required TResult Function(int amount) deletingContacts,
    required TResult Function(String number) callingNumber,
    required TResult Function(String number) sendingMessage,
  }) {
    return loadingContacts(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? amount)? loadingContacts,
    TResult Function(int amount)? deletingContacts,
    TResult Function(String number)? callingNumber,
    TResult Function(String number)? sendingMessage,
    required TResult orElse(),
  }) {
    if (loadingContacts != null) {
      return loadingContacts(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingContacts value) loadingContacts,
    required TResult Function(_DeletingContacts value) deletingContacts,
    required TResult Function(_CallingNumber value) callingNumber,
    required TResult Function(_SendingMessage value) sendingMessage,
  }) {
    return loadingContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingContacts value)? loadingContacts,
    TResult Function(_DeletingContacts value)? deletingContacts,
    TResult Function(_CallingNumber value)? callingNumber,
    TResult Function(_SendingMessage value)? sendingMessage,
    required TResult orElse(),
  }) {
    if (loadingContacts != null) {
      return loadingContacts(this);
    }
    return orElse();
  }
}

abstract class _LoadingContacts implements ContactsLoading {
  const factory _LoadingContacts({int? amount}) = _$_LoadingContacts;

  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingContactsCopyWith<_LoadingContacts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeletingContactsCopyWith<$Res> {
  factory _$DeletingContactsCopyWith(
          _DeletingContacts value, $Res Function(_DeletingContacts) then) =
      __$DeletingContactsCopyWithImpl<$Res>;
  $Res call({int amount});
}

/// @nodoc
class __$DeletingContactsCopyWithImpl<$Res>
    extends _$ContactsLoadingCopyWithImpl<$Res>
    implements _$DeletingContactsCopyWith<$Res> {
  __$DeletingContactsCopyWithImpl(
      _DeletingContacts _value, $Res Function(_DeletingContacts) _then)
      : super(_value, (v) => _then(v as _DeletingContacts));

  @override
  _DeletingContacts get _value => super._value as _DeletingContacts;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_DeletingContacts(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeletingContacts implements _DeletingContacts {
  const _$_DeletingContacts({required this.amount});

  @override
  final int amount;

  @override
  String toString() {
    return 'ContactsLoading.deletingContacts(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletingContacts &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$DeletingContactsCopyWith<_DeletingContacts> get copyWith =>
      __$DeletingContactsCopyWithImpl<_DeletingContacts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? amount) loadingContacts,
    required TResult Function(int amount) deletingContacts,
    required TResult Function(String number) callingNumber,
    required TResult Function(String number) sendingMessage,
  }) {
    return deletingContacts(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? amount)? loadingContacts,
    TResult Function(int amount)? deletingContacts,
    TResult Function(String number)? callingNumber,
    TResult Function(String number)? sendingMessage,
    required TResult orElse(),
  }) {
    if (deletingContacts != null) {
      return deletingContacts(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingContacts value) loadingContacts,
    required TResult Function(_DeletingContacts value) deletingContacts,
    required TResult Function(_CallingNumber value) callingNumber,
    required TResult Function(_SendingMessage value) sendingMessage,
  }) {
    return deletingContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingContacts value)? loadingContacts,
    TResult Function(_DeletingContacts value)? deletingContacts,
    TResult Function(_CallingNumber value)? callingNumber,
    TResult Function(_SendingMessage value)? sendingMessage,
    required TResult orElse(),
  }) {
    if (deletingContacts != null) {
      return deletingContacts(this);
    }
    return orElse();
  }
}

abstract class _DeletingContacts implements ContactsLoading {
  const factory _DeletingContacts({required int amount}) = _$_DeletingContacts;

  int get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeletingContactsCopyWith<_DeletingContacts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CallingNumberCopyWith<$Res> {
  factory _$CallingNumberCopyWith(
          _CallingNumber value, $Res Function(_CallingNumber) then) =
      __$CallingNumberCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$CallingNumberCopyWithImpl<$Res>
    extends _$ContactsLoadingCopyWithImpl<$Res>
    implements _$CallingNumberCopyWith<$Res> {
  __$CallingNumberCopyWithImpl(
      _CallingNumber _value, $Res Function(_CallingNumber) _then)
      : super(_value, (v) => _then(v as _CallingNumber));

  @override
  _CallingNumber get _value => super._value as _CallingNumber;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_CallingNumber(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CallingNumber implements _CallingNumber {
  const _$_CallingNumber({required this.number});

  @override
  final String number;

  @override
  String toString() {
    return 'ContactsLoading.callingNumber(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallingNumber &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$CallingNumberCopyWith<_CallingNumber> get copyWith =>
      __$CallingNumberCopyWithImpl<_CallingNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? amount) loadingContacts,
    required TResult Function(int amount) deletingContacts,
    required TResult Function(String number) callingNumber,
    required TResult Function(String number) sendingMessage,
  }) {
    return callingNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? amount)? loadingContacts,
    TResult Function(int amount)? deletingContacts,
    TResult Function(String number)? callingNumber,
    TResult Function(String number)? sendingMessage,
    required TResult orElse(),
  }) {
    if (callingNumber != null) {
      return callingNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingContacts value) loadingContacts,
    required TResult Function(_DeletingContacts value) deletingContacts,
    required TResult Function(_CallingNumber value) callingNumber,
    required TResult Function(_SendingMessage value) sendingMessage,
  }) {
    return callingNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingContacts value)? loadingContacts,
    TResult Function(_DeletingContacts value)? deletingContacts,
    TResult Function(_CallingNumber value)? callingNumber,
    TResult Function(_SendingMessage value)? sendingMessage,
    required TResult orElse(),
  }) {
    if (callingNumber != null) {
      return callingNumber(this);
    }
    return orElse();
  }
}

abstract class _CallingNumber implements ContactsLoading {
  const factory _CallingNumber({required String number}) = _$_CallingNumber;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CallingNumberCopyWith<_CallingNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendingMessageCopyWith<$Res> {
  factory _$SendingMessageCopyWith(
          _SendingMessage value, $Res Function(_SendingMessage) then) =
      __$SendingMessageCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$SendingMessageCopyWithImpl<$Res>
    extends _$ContactsLoadingCopyWithImpl<$Res>
    implements _$SendingMessageCopyWith<$Res> {
  __$SendingMessageCopyWithImpl(
      _SendingMessage _value, $Res Function(_SendingMessage) _then)
      : super(_value, (v) => _then(v as _SendingMessage));

  @override
  _SendingMessage get _value => super._value as _SendingMessage;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_SendingMessage(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendingMessage implements _SendingMessage {
  const _$_SendingMessage({required this.number});

  @override
  final String number;

  @override
  String toString() {
    return 'ContactsLoading.sendingMessage(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendingMessage &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$SendingMessageCopyWith<_SendingMessage> get copyWith =>
      __$SendingMessageCopyWithImpl<_SendingMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? amount) loadingContacts,
    required TResult Function(int amount) deletingContacts,
    required TResult Function(String number) callingNumber,
    required TResult Function(String number) sendingMessage,
  }) {
    return sendingMessage(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? amount)? loadingContacts,
    TResult Function(int amount)? deletingContacts,
    TResult Function(String number)? callingNumber,
    TResult Function(String number)? sendingMessage,
    required TResult orElse(),
  }) {
    if (sendingMessage != null) {
      return sendingMessage(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingContacts value) loadingContacts,
    required TResult Function(_DeletingContacts value) deletingContacts,
    required TResult Function(_CallingNumber value) callingNumber,
    required TResult Function(_SendingMessage value) sendingMessage,
  }) {
    return sendingMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingContacts value)? loadingContacts,
    TResult Function(_DeletingContacts value)? deletingContacts,
    TResult Function(_CallingNumber value)? callingNumber,
    TResult Function(_SendingMessage value)? sendingMessage,
    required TResult orElse(),
  }) {
    if (sendingMessage != null) {
      return sendingMessage(this);
    }
    return orElse();
  }
}

abstract class _SendingMessage implements ContactsLoading {
  const factory _SendingMessage({required String number}) = _$_SendingMessage;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendingMessageCopyWith<_SendingMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
