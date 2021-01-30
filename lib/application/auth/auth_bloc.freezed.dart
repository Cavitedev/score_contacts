// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _GetUser getUser() {
    return const _GetUser();
  }

// ignore: unused_element
  _SignOut signOut(BuildContext context) {
    return _SignOut(
      context,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getUser(),
    @required TResult signOut(BuildContext context),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getUser(),
    TResult signOut(BuildContext context),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getUser(_GetUser value),
    @required TResult signOut(_SignOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getUser(_GetUser value),
    TResult signOut(_SignOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$GetUserCopyWith<$Res> {
  factory _$GetUserCopyWith(_GetUser value, $Res Function(_GetUser) then) =
      __$GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$GetUserCopyWith<$Res> {
  __$GetUserCopyWithImpl(_GetUser _value, $Res Function(_GetUser) _then)
      : super(_value, (v) => _then(v as _GetUser));

  @override
  _GetUser get _value => super._value as _GetUser;
}

/// @nodoc
class _$_GetUser implements _GetUser {
  const _$_GetUser();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getUser(),
    @required TResult signOut(BuildContext context),
  }) {
    assert(getUser != null);
    assert(signOut != null);
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getUser(),
    TResult signOut(BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getUser(_GetUser value),
    @required TResult signOut(_SignOut value),
  }) {
    assert(getUser != null);
    assert(signOut != null);
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getUser(_GetUser value),
    TResult signOut(_SignOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements AuthEvent {
  const factory _GetUser() = _$_GetUser;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut _value, $Res Function(_SignOut) _then)
      : super(_value, (v) => _then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(_SignOut(
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_SignOut implements _SignOut {
  const _$_SignOut(this.context) : assert(context != null);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.signOut(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignOut &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  _$SignOutCopyWith<_SignOut> get copyWith =>
      __$SignOutCopyWithImpl<_SignOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getUser(),
    @required TResult signOut(BuildContext context),
  }) {
    assert(getUser != null);
    assert(signOut != null);
    return signOut(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getUser(),
    TResult signOut(BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getUser(_GetUser value),
    @required TResult signOut(_SignOut value),
  }) {
    assert(getUser != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getUser(_GetUser value),
    TResult signOut(_SignOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut(BuildContext context) = _$_SignOut;

  BuildContext get context;
  _$SignOutCopyWith<_SignOut> get copyWith;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Authenticated authenticated() {
    return const _Authenticated();
  }

// ignore: unused_element
  _Unathenticated unathenticated() {
    return const _Unathenticated();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unathenticated(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unathenticated(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unathenticated(_Unathenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unathenticated(_Unathenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required TResult authenticated(),
    @required TResult unathenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unathenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unathenticated(),
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
    @required TResult authenticated(_Authenticated value),
    @required TResult unathenticated(_Unathenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unathenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unathenticated(_Unathenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unathenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unathenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unathenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unathenticated(_Unathenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unathenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unathenticated(_Unathenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$UnathenticatedCopyWith<$Res> {
  factory _$UnathenticatedCopyWith(
          _Unathenticated value, $Res Function(_Unathenticated) then) =
      __$UnathenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnathenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnathenticatedCopyWith<$Res> {
  __$UnathenticatedCopyWithImpl(
      _Unathenticated _value, $Res Function(_Unathenticated) _then)
      : super(_value, (v) => _then(v as _Unathenticated));

  @override
  _Unathenticated get _value => super._value as _Unathenticated;
}

/// @nodoc
class _$_Unathenticated implements _Unathenticated {
  const _$_Unathenticated();

  @override
  String toString() {
    return 'AuthState.unathenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unathenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unathenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unathenticated != null);
    return unathenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unathenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unathenticated != null) {
      return unathenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unathenticated(_Unathenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unathenticated != null);
    return unathenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unathenticated(_Unathenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unathenticated != null) {
      return unathenticated(this);
    }
    return orElse();
  }
}

abstract class _Unathenticated implements AuthState {
  const factory _Unathenticated() = _$_Unathenticated;
}
