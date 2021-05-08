// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppManagerStateTearOff {
  const _$AppManagerStateTearOff();

  _AppManagerState call(
      {required ThemeMode themeMode,
      required String region,
      String? languageCode}) {
    return _AppManagerState(
      themeMode: themeMode,
      region: region,
      languageCode: languageCode,
    );
  }
}

/// @nodoc
const $AppManagerState = _$AppManagerStateTearOff();

/// @nodoc
mixin _$AppManagerState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppManagerStateCopyWith<AppManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppManagerStateCopyWith<$Res> {
  factory $AppManagerStateCopyWith(
          AppManagerState value, $Res Function(AppManagerState) then) =
      _$AppManagerStateCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode, String region, String? languageCode});
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
    Object? themeMode = freezed,
    Object? region = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({ThemeMode themeMode, String region, String? languageCode});
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
    Object? themeMode = freezed,
    Object? region = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_AppManagerState(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppManagerState extends _AppManagerState with DiagnosticableTreeMixin {
  const _$_AppManagerState(
      {required this.themeMode, required this.region, this.languageCode})
      : super._();

  @override
  final ThemeMode themeMode;
  @override
  final String region;
  @override
  final String? languageCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppManagerState(themeMode: $themeMode, region: $region, languageCode: $languageCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppManagerState'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('languageCode', languageCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppManagerState &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(themeMode) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(languageCode);

  @JsonKey(ignore: true)
  @override
  _$AppManagerStateCopyWith<_AppManagerState> get copyWith =>
      __$AppManagerStateCopyWithImpl<_AppManagerState>(this, _$identity);
}

abstract class _AppManagerState extends AppManagerState {
  const factory _AppManagerState(
      {required ThemeMode themeMode,
      required String region,
      String? languageCode}) = _$_AppManagerState;
  const _AppManagerState._() : super._();

  @override
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @override
  String get region => throw _privateConstructorUsedError;
  @override
  String? get languageCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppManagerStateCopyWith<_AppManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}
