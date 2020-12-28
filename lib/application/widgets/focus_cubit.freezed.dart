// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'focus_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
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

/// @nodoc
// ignore: unused_element
const $FocusState = _$FocusStateTearOff();

/// @nodoc
mixin _$FocusState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult focused(),
    @required TResult unfocused(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult focused(),
    TResult unfocused(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult focused(_Focused value),
    @required TResult unfocused(_Unfocused value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult focused(_Focused value),
    TResult unfocused(_Unfocused value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FocusStateCopyWith<$Res> {
  factory $FocusStateCopyWith(
          FocusState value, $Res Function(FocusState) then) =
      _$FocusStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FocusStateCopyWithImpl<$Res> implements $FocusStateCopyWith<$Res> {
  _$FocusStateCopyWithImpl(this._value, this._then);

  final FocusState _value;
  // ignore: unused_field
  final $Res Function(FocusState) _then;
}

/// @nodoc
abstract class _$FocusedCopyWith<$Res> {
  factory _$FocusedCopyWith(_Focused value, $Res Function(_Focused) then) =
      __$FocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FocusedCopyWithImpl<$Res> extends _$FocusStateCopyWithImpl<$Res>
    implements _$FocusedCopyWith<$Res> {
  __$FocusedCopyWithImpl(_Focused _value, $Res Function(_Focused) _then)
      : super(_value, (v) => _then(v as _Focused));

  @override
  _Focused get _value => super._value as _Focused;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult focused(),
    @required TResult unfocused(),
  }) {
    assert(focused != null);
    assert(unfocused != null);
    return focused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult focused(),
    TResult unfocused(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (focused != null) {
      return focused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult focused(_Focused value),
    @required TResult unfocused(_Unfocused value),
  }) {
    assert(focused != null);
    assert(unfocused != null);
    return focused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult focused(_Focused value),
    TResult unfocused(_Unfocused value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$UnfocusedCopyWith<$Res> {
  factory _$UnfocusedCopyWith(
          _Unfocused value, $Res Function(_Unfocused) then) =
      __$UnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnfocusedCopyWithImpl<$Res> extends _$FocusStateCopyWithImpl<$Res>
    implements _$UnfocusedCopyWith<$Res> {
  __$UnfocusedCopyWithImpl(_Unfocused _value, $Res Function(_Unfocused) _then)
      : super(_value, (v) => _then(v as _Unfocused));

  @override
  _Unfocused get _value => super._value as _Unfocused;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult focused(),
    @required TResult unfocused(),
  }) {
    assert(focused != null);
    assert(unfocused != null);
    return unfocused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult focused(),
    TResult unfocused(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unfocused != null) {
      return unfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult focused(_Focused value),
    @required TResult unfocused(_Unfocused value),
  }) {
    assert(focused != null);
    assert(unfocused != null);
    return unfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult focused(_Focused value),
    TResult unfocused(_Unfocused value),
    @required TResult orElse(),
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
