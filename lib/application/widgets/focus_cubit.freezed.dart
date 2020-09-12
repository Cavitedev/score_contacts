// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'focus_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FocusStateTearOff {
  const _$FocusStateTearOff();

// ignore: unused_element
  _Focused focused() {
    return const _Focused();
  }

// ignore: unused_element
  _Unfocused unfocused() {
    return const _Unfocused();
  }
}

// ignore: unused_element
const $FocusState = _$FocusStateTearOff();

mixin _$FocusState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result focused(),
    @required Result unfocused(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result focused(),
    Result unfocused(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result focused(_Focused value),
    @required Result unfocused(_Unfocused value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result focused(_Focused value),
    Result unfocused(_Unfocused value),
    @required Result orElse(),
  });
}

abstract class $FocusStateCopyWith<$Res> {
  factory $FocusStateCopyWith(
          FocusState value, $Res Function(FocusState) then) =
      _$FocusStateCopyWithImpl<$Res>;
}

class _$FocusStateCopyWithImpl<$Res> implements $FocusStateCopyWith<$Res> {
  _$FocusStateCopyWithImpl(this._value, this._then);

  final FocusState _value;
  // ignore: unused_field
  final $Res Function(FocusState) _then;
}

abstract class _$FocusedCopyWith<$Res> {
  factory _$FocusedCopyWith(_Focused value, $Res Function(_Focused) then) =
      __$FocusedCopyWithImpl<$Res>;
}

class __$FocusedCopyWithImpl<$Res> extends _$FocusStateCopyWithImpl<$Res>
    implements _$FocusedCopyWith<$Res> {
  __$FocusedCopyWithImpl(_Focused _value, $Res Function(_Focused) _then)
      : super(_value, (v) => _then(v as _Focused));

  @override
  _Focused get _value => super._value as _Focused;
}

class _$_Focused implements _Focused {
  const _$_Focused();

  @override
  String toString() {
    return 'FocusState.focused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Focused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result focused(),
    @required Result unfocused(),
  }) {
    assert(focused != null);
    assert(unfocused != null);
    return focused();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result focused(),
    Result unfocused(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (focused != null) {
      return focused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result focused(_Focused value),
    @required Result unfocused(_Unfocused value),
  }) {
    assert(focused != null);
    assert(unfocused != null);
    return focused(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result focused(_Focused value),
    Result unfocused(_Unfocused value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (focused != null) {
      return focused(this);
    }
    return orElse();
  }
}

abstract class _Focused implements FocusState {
  const factory _Focused() = _$_Focused;
}

abstract class _$UnfocusedCopyWith<$Res> {
  factory _$UnfocusedCopyWith(
          _Unfocused value, $Res Function(_Unfocused) then) =
      __$UnfocusedCopyWithImpl<$Res>;
}

class __$UnfocusedCopyWithImpl<$Res> extends _$FocusStateCopyWithImpl<$Res>
    implements _$UnfocusedCopyWith<$Res> {
  __$UnfocusedCopyWithImpl(_Unfocused _value, $Res Function(_Unfocused) _then)
      : super(_value, (v) => _then(v as _Unfocused));

  @override
  _Unfocused get _value => super._value as _Unfocused;
}

class _$_Unfocused implements _Unfocused {
  const _$_Unfocused();

  @override
  String toString() {
    return 'FocusState.unfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result focused(),
    @required Result unfocused(),
  }) {
    assert(focused != null);
    assert(unfocused != null);
    return unfocused();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result focused(),
    Result unfocused(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unfocused != null) {
      return unfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result focused(_Focused value),
    @required Result unfocused(_Unfocused value),
  }) {
    assert(focused != null);
    assert(unfocused != null);
    return unfocused(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result focused(_Focused value),
    Result unfocused(_Unfocused value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unfocused != null) {
      return unfocused(this);
    }
    return orElse();
  }
}

abstract class _Unfocused implements FocusState {
  const factory _Unfocused() = _$_Unfocused;
}
