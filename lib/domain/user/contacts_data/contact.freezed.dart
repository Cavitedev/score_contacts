// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactTearOff {
  const _$ContactTearOff();

  _Contact call(
      {required UniqueID id,
      required NameData nameData,
      Map<Type, List<ILabelObject>?>? labelObjects,
      List<Company>? companies}) {
    return _Contact(
      id: id,
      nameData: nameData,
      labelObjects: labelObjects,
      companies: companies,
    );
  }
}

/// @nodoc
const $Contact = _$ContactTearOff();

/// @nodoc
mixin _$Contact {
  UniqueID get id => throw _privateConstructorUsedError;
  NameData get nameData => throw _privateConstructorUsedError;
  Map<Type, List<ILabelObject>?>? get labelObjects =>
      throw _privateConstructorUsedError;
  List<Company>? get companies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;
  $Res call(
      {UniqueID id,
      NameData nameData,
      Map<Type, List<ILabelObject>?>? labelObjects,
      List<Company>? companies});

  $NameDataCopyWith<$Res> get nameData;
}

/// @nodoc
class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  final Contact _value;
  // ignore: unused_field
  final $Res Function(Contact) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nameData = freezed,
    Object? labelObjects = freezed,
    Object? companies = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      nameData: nameData == freezed
          ? _value.nameData
          : nameData // ignore: cast_nullable_to_non_nullable
              as NameData,
      labelObjects: labelObjects == freezed
          ? _value.labelObjects
          : labelObjects // ignore: cast_nullable_to_non_nullable
              as Map<Type, List<ILabelObject>?>?,
      companies: companies == freezed
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>?,
    ));
  }

  @override
  $NameDataCopyWith<$Res> get nameData {
    return $NameDataCopyWith<$Res>(_value.nameData, (value) {
      return _then(_value.copyWith(nameData: value));
    });
  }
}

/// @nodoc
abstract class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) then) =
      __$ContactCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueID id,
      NameData nameData,
      Map<Type, List<ILabelObject>?>? labelObjects,
      List<Company>? companies});

  @override
  $NameDataCopyWith<$Res> get nameData;
}

/// @nodoc
class __$ContactCopyWithImpl<$Res> extends _$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(_Contact _value, $Res Function(_Contact) _then)
      : super(_value, (v) => _then(v as _Contact));

  @override
  _Contact get _value => super._value as _Contact;

  @override
  $Res call({
    Object? id = freezed,
    Object? nameData = freezed,
    Object? labelObjects = freezed,
    Object? companies = freezed,
  }) {
    return _then(_Contact(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueID,
      nameData: nameData == freezed
          ? _value.nameData
          : nameData // ignore: cast_nullable_to_non_nullable
              as NameData,
      labelObjects: labelObjects == freezed
          ? _value.labelObjects
          : labelObjects // ignore: cast_nullable_to_non_nullable
              as Map<Type, List<ILabelObject>?>?,
      companies: companies == freezed
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>?,
    ));
  }
}

/// @nodoc
class _$_Contact extends _Contact {
  const _$_Contact(
      {required this.id,
      required this.nameData,
      this.labelObjects,
      this.companies})
      : super._();

  @override
  final UniqueID id;
  @override
  final NameData nameData;
  @override
  final Map<Type, List<ILabelObject>?>? labelObjects;
  @override
  final List<Company>? companies;

  @override
  String toString() {
    return 'Contact(id: $id, nameData: $nameData, labelObjects: $labelObjects, companies: $companies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contact &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nameData, nameData) ||
                const DeepCollectionEquality()
                    .equals(other.nameData, nameData)) &&
            (identical(other.labelObjects, labelObjects) ||
                const DeepCollectionEquality()
                    .equals(other.labelObjects, labelObjects)) &&
            (identical(other.companies, companies) ||
                const DeepCollectionEquality()
                    .equals(other.companies, companies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nameData) ^
      const DeepCollectionEquality().hash(labelObjects) ^
      const DeepCollectionEquality().hash(companies);

  @JsonKey(ignore: true)
  @override
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);
}

abstract class _Contact extends Contact {
  const factory _Contact(
      {required UniqueID id,
      required NameData nameData,
      Map<Type, List<ILabelObject>?>? labelObjects,
      List<Company>? companies}) = _$_Contact;
  const _Contact._() : super._();

  @override
  UniqueID get id => throw _privateConstructorUsedError;
  @override
  NameData get nameData => throw _privateConstructorUsedError;
  @override
  Map<Type, List<ILabelObject>?>? get labelObjects =>
      throw _privateConstructorUsedError;
  @override
  List<Company>? get companies => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactCopyWith<_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
