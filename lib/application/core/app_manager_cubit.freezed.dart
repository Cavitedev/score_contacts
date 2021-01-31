// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppManagerStateTearOff {
  const _$AppManagerStateTearOff();

// ignore: unused_element
  _AppManagerState call({ThemeMode themeMode, String region}) {
    return _AppManagerState(
      themeMode: themeMode,
      region: region,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppManagerState = _$AppManagerStateTearOff();

/// @nodoc
mixin _$AppManagerState {
  ThemeMode get themeMode;
  String get region;

  @JsonKey(ignore: true)
  $AppManagerStateCopyWith<AppManagerState> get copyWith;
}

/// @nodoc
abstract class $AppManagerStateCopyWith<$Res> {
  factory $AppManagerStateCopyWith(
          AppManagerState value, $Res Function(AppManagerState) then) =
      _$AppManagerStateCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode, String region});
}

/// @nodoc
class _$AppManagerStateCopyWithImpl<$Res>
    implements $AppManagerStateCopyWith<$Res> {
  _$AppManagerStateCopyWithImpl(this._value, this._then);

  final AppManagerState _value;
  // ignore: unused_field
  final $Res Function(AppManagerState) _then;

  @override
  $Res call({
    Object themeMode = freezed,
    Object region = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode:
          themeMode == freezed ? _value.themeMode : themeMode as ThemeMode,
      region: region == freezed ? _value.region : region as String,
    ));
  }
}

/// @nodoc
abstract class _$AppManagerStateCopyWith<$Res>
    implements $AppManagerStateCopyWith<$Res> {
  factory _$AppManagerStateCopyWith(
          _AppManagerState value, $Res Function(_AppManagerState) then) =
      __$AppManagerStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode themeMode, String region});
}

/// @nodoc
class __$AppManagerStateCopyWithImpl<$Res>
    extends _$AppManagerStateCopyWithImpl<$Res>
    implements _$AppManagerStateCopyWith<$Res> {
  __$AppManagerStateCopyWithImpl(
      _AppManagerState _value, $Res Function(_AppManagerState) _then)
      : super(_value, (v) => _then(v as _AppManagerState));

  @override
  _AppManagerState get _value => super._value as _AppManagerState;

  @override
  $Res call({
    Object themeMode = freezed,
    Object region = freezed,
  }) {
    return _then(_AppManagerState(
      themeMode:
          themeMode == freezed ? _value.themeMode : themeMode as ThemeMode,
      region: region == freezed ? _value.region : region as String,
    ));
  }
}

/// @nodoc
class _$_AppManagerState extends _AppManagerState {
  const _$_AppManagerState({this.themeMode, this.region}) : super._();

  @override
  final ThemeMode themeMode;
  @override
  final String region;

  @override
  String toString() {
    return 'AppManagerState(themeMode: $themeMode, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppManagerState &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(themeMode) ^
      const DeepCollectionEquality().hash(region);

  @JsonKey(ignore: true)
  @override
  _$AppManagerStateCopyWith<_AppManagerState> get copyWith =>
      __$AppManagerStateCopyWithImpl<_AppManagerState>(this, _$identity);
}

abstract class _AppManagerState extends AppManagerState {
  const _AppManagerState._() : super._();
  const factory _AppManagerState({ThemeMode themeMode, String region}) =
      _$_AppManagerState;

  @override
  ThemeMode get themeMode;
  @override
  String get region;
  @override
  @JsonKey(ignore: true)
  _$AppManagerStateCopyWith<_AppManagerState> get copyWith;
}
