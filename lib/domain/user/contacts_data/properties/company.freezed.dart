// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CompanyTearOff {
  const _$CompanyTearOff();

// ignore: unused_element
  _Company call({String name, String title}) {
    return _Company(
      name: name,
      title: title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Company = _$CompanyTearOff();

/// @nodoc
mixin _$Company {
  String get name;
  String get title;

  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call({String name, String title});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

  @override
  $Res call({
    Object name = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
abstract class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) then) =
      __$CompanyCopyWithImpl<$Res>;
  @override
  $Res call({String name, String title});
}

/// @nodoc
class __$CompanyCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(_Company _value, $Res Function(_Company) _then)
      : super(_value, (v) => _then(v as _Company));

  @override
  _Company get _value => super._value as _Company;

  @override
  $Res call({
    Object name = freezed,
    Object title = freezed,
  }) {
    return _then(_Company(
      name: name == freezed ? _value.name : name as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_Company extends _Company {
  const _$_Company({this.name, this.title}) : super._();

  @override
  final String name;
  @override
  final String title;

  @override
  String toString() {
    return 'Company(name: $name, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Company &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$CompanyCopyWith<_Company> get copyWith =>
      __$CompanyCopyWithImpl<_Company>(this, _$identity);
}

abstract class _Company extends Company {
  const _Company._() : super._();
  const factory _Company({String name, String title}) = _$_Company;

  @override
  String get name;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$CompanyCopyWith<_Company> get copyWith;
}
