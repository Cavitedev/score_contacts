// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'call_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CallFailureTearOff {
  const _$CallFailureTearOff();

  _NotCallNumberFound notCallNumberFound() {
    return const _NotCallNumberFound();
  }

  _ErrorOnCall errorOnCall(String number) {
    return _ErrorOnCall(
      number,
    );
  }
}

/// @nodoc
const $CallFailure = _$CallFailureTearOff();

/// @nodoc
mixin _$CallFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notCallNumberFound,
    required TResult Function(String number) errorOnCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notCallNumberFound,
    TResult Function(String number)? errorOnCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotCallNumberFound value) notCallNumberFound,
    required TResult Function(_ErrorOnCall value) errorOnCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotCallNumberFound value)? notCallNumberFound,
    TResult Function(_ErrorOnCall value)? errorOnCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallFailureCopyWith<$Res> {
  factory $CallFailureCopyWith(
          CallFailure value, $Res Function(CallFailure) then) =
      _$CallFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CallFailureCopyWithImpl<$Res> implements $CallFailureCopyWith<$Res> {
  _$CallFailureCopyWithImpl(this._value, this._then);

  final CallFailure _value;
  // ignore: unused_field
  final $Res Function(CallFailure) _then;
}

/// @nodoc
abstract class _$NotCallNumberFoundCopyWith<$Res> {
  factory _$NotCallNumberFoundCopyWith(
          _NotCallNumberFound value, $Res Function(_NotCallNumberFound) then) =
      __$NotCallNumberFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotCallNumberFoundCopyWithImpl<$Res>
    extends _$CallFailureCopyWithImpl<$Res>
    implements _$NotCallNumberFoundCopyWith<$Res> {
  __$NotCallNumberFoundCopyWithImpl(
      _NotCallNumberFound _value, $Res Function(_NotCallNumberFound) _then)
      : super(_value, (v) => _then(v as _NotCallNumberFound));

  @override
  _NotCallNumberFound get _value => super._value as _NotCallNumberFound;
}

/// @nodoc

class _$_NotCallNumberFound implements _NotCallNumberFound {
  const _$_NotCallNumberFound();

  @override
  String toString() {
    return 'CallFailure.notCallNumberFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotCallNumberFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notCallNumberFound,
    required TResult Function(String number) errorOnCall,
  }) {
    return notCallNumberFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notCallNumberFound,
    TResult Function(String number)? errorOnCall,
    required TResult orElse(),
  }) {
    if (notCallNumberFound != null) {
      return notCallNumberFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotCallNumberFound value) notCallNumberFound,
    required TResult Function(_ErrorOnCall value) errorOnCall,
  }) {
    return notCallNumberFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotCallNumberFound value)? notCallNumberFound,
    TResult Function(_ErrorOnCall value)? errorOnCall,
    required TResult orElse(),
  }) {
    if (notCallNumberFound != null) {
      return notCallNumberFound(this);
    }
    return orElse();
  }
}

abstract class _NotCallNumberFound implements CallFailure {
  const factory _NotCallNumberFound() = _$_NotCallNumberFound;
}

/// @nodoc
abstract class _$ErrorOnCallCopyWith<$Res> {
  factory _$ErrorOnCallCopyWith(
          _ErrorOnCall value, $Res Function(_ErrorOnCall) then) =
      __$ErrorOnCallCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class __$ErrorOnCallCopyWithImpl<$Res> extends _$CallFailureCopyWithImpl<$Res>
    implements _$ErrorOnCallCopyWith<$Res> {
  __$ErrorOnCallCopyWithImpl(
      _ErrorOnCall _value, $Res Function(_ErrorOnCall) _then)
      : super(_value, (v) => _then(v as _ErrorOnCall));

  @override
  _ErrorOnCall get _value => super._value as _ErrorOnCall;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_ErrorOnCall(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorOnCall implements _ErrorOnCall {
  const _$_ErrorOnCall(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'CallFailure.errorOnCall(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorOnCall &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  _$ErrorOnCallCopyWith<_ErrorOnCall> get copyWith =>
      __$ErrorOnCallCopyWithImpl<_ErrorOnCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notCallNumberFound,
    required TResult Function(String number) errorOnCall,
  }) {
    return errorOnCall(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notCallNumberFound,
    TResult Function(String number)? errorOnCall,
    required TResult orElse(),
  }) {
    if (errorOnCall != null) {
      return errorOnCall(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotCallNumberFound value) notCallNumberFound,
    required TResult Function(_ErrorOnCall value) errorOnCall,
  }) {
    return errorOnCall(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotCallNumberFound value)? notCallNumberFound,
    TResult Function(_ErrorOnCall value)? errorOnCall,
    required TResult orElse(),
  }) {
    if (errorOnCall != null) {
      return errorOnCall(this);
    }
    return orElse();
  }
}

abstract class _ErrorOnCall implements CallFailure {
  const factory _ErrorOnCall(String number) = _$_ErrorOnCall;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorOnCallCopyWith<_ErrorOnCall> get copyWith =>
      throw _privateConstructorUsedError;
}
