// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactDTO _$ContactDTOFromJson(Map<String, dynamic> json) {
  return _ContactDTO.fromJson(json);
}

/// @nodoc
class _$ContactDTOTearOff {
  const _$ContactDTOTearOff();

  _ContactDTO call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: nameDataName) required NameDataDTO nameDataDTO,
      @JsonKey(name: companiesName) List<CompanyDTO?>? companiesDTO,
      @JsonKey(name: emailsName) List<LabelObjectDTO?>? emailsDTO,
      @JsonKey(name: phonesName) List<LabelObjectDTO?>? phonesDTO,
      @JsonKey(name: imageUrlName) String? imageUrl,
      @ServerTimeStampConverter() required FieldValue serverTimeStamp}) {
    return _ContactDTO(
      id: id,
      nameDataDTO: nameDataDTO,
      companiesDTO: companiesDTO,
      emailsDTO: emailsDTO,
      phonesDTO: phonesDTO,
      imageUrl: imageUrl,
      serverTimeStamp: serverTimeStamp,
    );
  }

  ContactDTO fromJson(Map<String, Object> json) {
    return ContactDTO.fromJson(json);
  }
}

/// @nodoc
const $ContactDTO = _$ContactDTOTearOff();

/// @nodoc
mixin _$ContactDTO {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: nameDataName)
  NameDataDTO get nameDataDTO => throw _privateConstructorUsedError;
  @JsonKey(name: companiesName)
  List<CompanyDTO?>? get companiesDTO => throw _privateConstructorUsedError;
  @JsonKey(name: emailsName)
  List<LabelObjectDTO?>? get emailsDTO => throw _privateConstructorUsedError;
  @JsonKey(name: phonesName)
  List<LabelObjectDTO?>? get phonesDTO => throw _privateConstructorUsedError;
  @JsonKey(name: imageUrlName)
  String? get imageUrl => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDTOCopyWith<ContactDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDTOCopyWith<$Res> {
  factory $ContactDTOCopyWith(
          ContactDTO value, $Res Function(ContactDTO) then) =
      _$ContactDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: nameDataName) NameDataDTO nameDataDTO,
      @JsonKey(name: companiesName) List<CompanyDTO?>? companiesDTO,
      @JsonKey(name: emailsName) List<LabelObjectDTO?>? emailsDTO,
      @JsonKey(name: phonesName) List<LabelObjectDTO?>? phonesDTO,
      @JsonKey(name: imageUrlName) String? imageUrl,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});

  $NameDataDTOCopyWith<$Res> get nameDataDTO;
}

/// @nodoc
class _$ContactDTOCopyWithImpl<$Res> implements $ContactDTOCopyWith<$Res> {
  _$ContactDTOCopyWithImpl(this._value, this._then);

  final ContactDTO _value;
  // ignore: unused_field
  final $Res Function(ContactDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nameDataDTO = freezed,
    Object? companiesDTO = freezed,
    Object? emailsDTO = freezed,
    Object? phonesDTO = freezed,
    Object? imageUrl = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nameDataDTO: nameDataDTO == freezed
          ? _value.nameDataDTO
          : nameDataDTO // ignore: cast_nullable_to_non_nullable
              as NameDataDTO,
      companiesDTO: companiesDTO == freezed
          ? _value.companiesDTO
          : companiesDTO // ignore: cast_nullable_to_non_nullable
              as List<CompanyDTO?>?,
      emailsDTO: emailsDTO == freezed
          ? _value.emailsDTO
          : emailsDTO // ignore: cast_nullable_to_non_nullable
              as List<LabelObjectDTO?>?,
      phonesDTO: phonesDTO == freezed
          ? _value.phonesDTO
          : phonesDTO // ignore: cast_nullable_to_non_nullable
              as List<LabelObjectDTO?>?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }

  @override
  $NameDataDTOCopyWith<$Res> get nameDataDTO {
    return $NameDataDTOCopyWith<$Res>(_value.nameDataDTO, (value) {
      return _then(_value.copyWith(nameDataDTO: value));
    });
  }
}

/// @nodoc
abstract class _$ContactDTOCopyWith<$Res> implements $ContactDTOCopyWith<$Res> {
  factory _$ContactDTOCopyWith(
          _ContactDTO value, $Res Function(_ContactDTO) then) =
      __$ContactDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: nameDataName) NameDataDTO nameDataDTO,
      @JsonKey(name: companiesName) List<CompanyDTO?>? companiesDTO,
      @JsonKey(name: emailsName) List<LabelObjectDTO?>? emailsDTO,
      @JsonKey(name: phonesName) List<LabelObjectDTO?>? phonesDTO,
      @JsonKey(name: imageUrlName) String? imageUrl,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});

  @override
  $NameDataDTOCopyWith<$Res> get nameDataDTO;
}

/// @nodoc
class __$ContactDTOCopyWithImpl<$Res> extends _$ContactDTOCopyWithImpl<$Res>
    implements _$ContactDTOCopyWith<$Res> {
  __$ContactDTOCopyWithImpl(
      _ContactDTO _value, $Res Function(_ContactDTO) _then)
      : super(_value, (v) => _then(v as _ContactDTO));

  @override
  _ContactDTO get _value => super._value as _ContactDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? nameDataDTO = freezed,
    Object? companiesDTO = freezed,
    Object? emailsDTO = freezed,
    Object? phonesDTO = freezed,
    Object? imageUrl = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_ContactDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nameDataDTO: nameDataDTO == freezed
          ? _value.nameDataDTO
          : nameDataDTO // ignore: cast_nullable_to_non_nullable
              as NameDataDTO,
      companiesDTO: companiesDTO == freezed
          ? _value.companiesDTO
          : companiesDTO // ignore: cast_nullable_to_non_nullable
              as List<CompanyDTO?>?,
      emailsDTO: emailsDTO == freezed
          ? _value.emailsDTO
          : emailsDTO // ignore: cast_nullable_to_non_nullable
              as List<LabelObjectDTO?>?,
      phonesDTO: phonesDTO == freezed
          ? _value.phonesDTO
          : phonesDTO // ignore: cast_nullable_to_non_nullable
              as List<LabelObjectDTO?>?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ContactDTO extends _ContactDTO {
  const _$_ContactDTO(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: nameDataName) required this.nameDataDTO,
      @JsonKey(name: companiesName) this.companiesDTO,
      @JsonKey(name: emailsName) this.emailsDTO,
      @JsonKey(name: phonesName) this.phonesDTO,
      @JsonKey(name: imageUrlName) this.imageUrl,
      @ServerTimeStampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_ContactDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(name: nameDataName)
  final NameDataDTO nameDataDTO;
  @override
  @JsonKey(name: companiesName)
  final List<CompanyDTO?>? companiesDTO;
  @override
  @JsonKey(name: emailsName)
  final List<LabelObjectDTO?>? emailsDTO;
  @override
  @JsonKey(name: phonesName)
  final List<LabelObjectDTO?>? phonesDTO;
  @override
  @JsonKey(name: imageUrlName)
  final String? imageUrl;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ContactDTO(id: $id, nameDataDTO: $nameDataDTO, companiesDTO: $companiesDTO, emailsDTO: $emailsDTO, phonesDTO: $phonesDTO, imageUrl: $imageUrl, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nameDataDTO, nameDataDTO) ||
                const DeepCollectionEquality()
                    .equals(other.nameDataDTO, nameDataDTO)) &&
            (identical(other.companiesDTO, companiesDTO) ||
                const DeepCollectionEquality()
                    .equals(other.companiesDTO, companiesDTO)) &&
            (identical(other.emailsDTO, emailsDTO) ||
                const DeepCollectionEquality()
                    .equals(other.emailsDTO, emailsDTO)) &&
            (identical(other.phonesDTO, phonesDTO) ||
                const DeepCollectionEquality()
                    .equals(other.phonesDTO, phonesDTO)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nameDataDTO) ^
      const DeepCollectionEquality().hash(companiesDTO) ^
      const DeepCollectionEquality().hash(emailsDTO) ^
      const DeepCollectionEquality().hash(phonesDTO) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$ContactDTOCopyWith<_ContactDTO> get copyWith =>
      __$ContactDTOCopyWithImpl<_ContactDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactDTOToJson(this);
  }
}

abstract class _ContactDTO extends ContactDTO {
  const factory _ContactDTO(
          {@JsonKey(ignore: true) String? id,
          @JsonKey(name: nameDataName) required NameDataDTO nameDataDTO,
          @JsonKey(name: companiesName) List<CompanyDTO?>? companiesDTO,
          @JsonKey(name: emailsName) List<LabelObjectDTO?>? emailsDTO,
          @JsonKey(name: phonesName) List<LabelObjectDTO?>? phonesDTO,
          @JsonKey(name: imageUrlName) String? imageUrl,
          @ServerTimeStampConverter() required FieldValue serverTimeStamp}) =
      _$_ContactDTO;
  const _ContactDTO._() : super._();

  factory _ContactDTO.fromJson(Map<String, dynamic> json) =
      _$_ContactDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: nameDataName)
  NameDataDTO get nameDataDTO => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: companiesName)
  List<CompanyDTO?>? get companiesDTO => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: emailsName)
  List<LabelObjectDTO?>? get emailsDTO => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: phonesName)
  List<LabelObjectDTO?>? get phonesDTO => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: imageUrlName)
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactDTOCopyWith<_ContactDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

NameDataDTO _$NameDataDTOFromJson(Map<String, dynamic> json) {
  return _NameDataDTO.fromJson(json);
}

/// @nodoc
class _$NameDataDTOTearOff {
  const _$NameDataDTOTearOff();

  _NameDataDTO call({String? name, String? surname}) {
    return _NameDataDTO(
      name: name,
      surname: surname,
    );
  }

  NameDataDTO fromJson(Map<String, Object> json) {
    return NameDataDTO.fromJson(json);
  }
}

/// @nodoc
const $NameDataDTO = _$NameDataDTOTearOff();

/// @nodoc
mixin _$NameDataDTO {
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameDataDTOCopyWith<NameDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameDataDTOCopyWith<$Res> {
  factory $NameDataDTOCopyWith(
          NameDataDTO value, $Res Function(NameDataDTO) then) =
      _$NameDataDTOCopyWithImpl<$Res>;
  $Res call({String? name, String? surname});
}

/// @nodoc
class _$NameDataDTOCopyWithImpl<$Res> implements $NameDataDTOCopyWith<$Res> {
  _$NameDataDTOCopyWithImpl(this._value, this._then);

  final NameDataDTO _value;
  // ignore: unused_field
  final $Res Function(NameDataDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NameDataDTOCopyWith<$Res>
    implements $NameDataDTOCopyWith<$Res> {
  factory _$NameDataDTOCopyWith(
          _NameDataDTO value, $Res Function(_NameDataDTO) then) =
      __$NameDataDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? surname});
}

/// @nodoc
class __$NameDataDTOCopyWithImpl<$Res> extends _$NameDataDTOCopyWithImpl<$Res>
    implements _$NameDataDTOCopyWith<$Res> {
  __$NameDataDTOCopyWithImpl(
      _NameDataDTO _value, $Res Function(_NameDataDTO) _then)
      : super(_value, (v) => _then(v as _NameDataDTO));

  @override
  _NameDataDTO get _value => super._value as _NameDataDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_NameDataDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NameDataDTO extends _NameDataDTO {
  const _$_NameDataDTO({this.name, this.surname}) : super._();

  factory _$_NameDataDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_NameDataDTOFromJson(json);

  @override
  final String? name;
  @override
  final String? surname;

  @override
  String toString() {
    return 'NameDataDTO(name: $name, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameDataDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality().equals(other.surname, surname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname);

  @JsonKey(ignore: true)
  @override
  _$NameDataDTOCopyWith<_NameDataDTO> get copyWith =>
      __$NameDataDTOCopyWithImpl<_NameDataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NameDataDTOToJson(this);
  }
}

abstract class _NameDataDTO extends NameDataDTO {
  const factory _NameDataDTO({String? name, String? surname}) = _$_NameDataDTO;
  const _NameDataDTO._() : super._();

  factory _NameDataDTO.fromJson(Map<String, dynamic> json) =
      _$_NameDataDTO.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get surname => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NameDataDTOCopyWith<_NameDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

LabelObjectDTO _$LabelObjectDTOFromJson(Map<String, dynamic> json) {
  return _LabelObjectDTO.fromJson(json);
}

/// @nodoc
class _$LabelObjectDTOTearOff {
  const _$LabelObjectDTOTearOff();

  _LabelObjectDTO call({String? name, String? label}) {
    return _LabelObjectDTO(
      name: name,
      label: label,
    );
  }

  LabelObjectDTO fromJson(Map<String, Object> json) {
    return LabelObjectDTO.fromJson(json);
  }
}

/// @nodoc
const $LabelObjectDTO = _$LabelObjectDTOTearOff();

/// @nodoc
mixin _$LabelObjectDTO {
  String? get name => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelObjectDTOCopyWith<LabelObjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelObjectDTOCopyWith<$Res> {
  factory $LabelObjectDTOCopyWith(
          LabelObjectDTO value, $Res Function(LabelObjectDTO) then) =
      _$LabelObjectDTOCopyWithImpl<$Res>;
  $Res call({String? name, String? label});
}

/// @nodoc
class _$LabelObjectDTOCopyWithImpl<$Res>
    implements $LabelObjectDTOCopyWith<$Res> {
  _$LabelObjectDTOCopyWithImpl(this._value, this._then);

  final LabelObjectDTO _value;
  // ignore: unused_field
  final $Res Function(LabelObjectDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LabelObjectDTOCopyWith<$Res>
    implements $LabelObjectDTOCopyWith<$Res> {
  factory _$LabelObjectDTOCopyWith(
          _LabelObjectDTO value, $Res Function(_LabelObjectDTO) then) =
      __$LabelObjectDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? label});
}

/// @nodoc
class __$LabelObjectDTOCopyWithImpl<$Res>
    extends _$LabelObjectDTOCopyWithImpl<$Res>
    implements _$LabelObjectDTOCopyWith<$Res> {
  __$LabelObjectDTOCopyWithImpl(
      _LabelObjectDTO _value, $Res Function(_LabelObjectDTO) _then)
      : super(_value, (v) => _then(v as _LabelObjectDTO));

  @override
  _LabelObjectDTO get _value => super._value as _LabelObjectDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? label = freezed,
  }) {
    return _then(_LabelObjectDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LabelObjectDTO extends _LabelObjectDTO {
  const _$_LabelObjectDTO({this.name, this.label}) : super._();

  factory _$_LabelObjectDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_LabelObjectDTOFromJson(json);

  @override
  final String? name;
  @override
  final String? label;

  @override
  String toString() {
    return 'LabelObjectDTO(name: $name, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LabelObjectDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$LabelObjectDTOCopyWith<_LabelObjectDTO> get copyWith =>
      __$LabelObjectDTOCopyWithImpl<_LabelObjectDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LabelObjectDTOToJson(this);
  }
}

abstract class _LabelObjectDTO extends LabelObjectDTO {
  const factory _LabelObjectDTO({String? name, String? label}) =
      _$_LabelObjectDTO;
  const _LabelObjectDTO._() : super._();

  factory _LabelObjectDTO.fromJson(Map<String, dynamic> json) =
      _$_LabelObjectDTO.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LabelObjectDTOCopyWith<_LabelObjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyDTO _$CompanyDTOFromJson(Map<String, dynamic> json) {
  return _CompanyDTO.fromJson(json);
}

/// @nodoc
class _$CompanyDTOTearOff {
  const _$CompanyDTOTearOff();

  _CompanyDTO call({String? name, String? title}) {
    return _CompanyDTO(
      name: name,
      title: title,
    );
  }

  CompanyDTO fromJson(Map<String, Object> json) {
    return CompanyDTO.fromJson(json);
  }
}

/// @nodoc
const $CompanyDTO = _$CompanyDTOTearOff();

/// @nodoc
mixin _$CompanyDTO {
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDTOCopyWith<CompanyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDTOCopyWith<$Res> {
  factory $CompanyDTOCopyWith(
          CompanyDTO value, $Res Function(CompanyDTO) then) =
      _$CompanyDTOCopyWithImpl<$Res>;
  $Res call({String? name, String? title});
}

/// @nodoc
class _$CompanyDTOCopyWithImpl<$Res> implements $CompanyDTOCopyWith<$Res> {
  _$CompanyDTOCopyWithImpl(this._value, this._then);

  final CompanyDTO _value;
  // ignore: unused_field
  final $Res Function(CompanyDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CompanyDTOCopyWith<$Res> implements $CompanyDTOCopyWith<$Res> {
  factory _$CompanyDTOCopyWith(
          _CompanyDTO value, $Res Function(_CompanyDTO) then) =
      __$CompanyDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? title});
}

/// @nodoc
class __$CompanyDTOCopyWithImpl<$Res> extends _$CompanyDTOCopyWithImpl<$Res>
    implements _$CompanyDTOCopyWith<$Res> {
  __$CompanyDTOCopyWithImpl(
      _CompanyDTO _value, $Res Function(_CompanyDTO) _then)
      : super(_value, (v) => _then(v as _CompanyDTO));

  @override
  _CompanyDTO get _value => super._value as _CompanyDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? title = freezed,
  }) {
    return _then(_CompanyDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CompanyDTO extends _CompanyDTO {
  const _$_CompanyDTO({this.name, this.title}) : super._();

  factory _$_CompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CompanyDTOFromJson(json);

  @override
  final String? name;
  @override
  final String? title;

  @override
  String toString() {
    return 'CompanyDTO(name: $name, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompanyDTO &&
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
  _$CompanyDTOCopyWith<_CompanyDTO> get copyWith =>
      __$CompanyDTOCopyWithImpl<_CompanyDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CompanyDTOToJson(this);
  }
}

abstract class _CompanyDTO extends CompanyDTO {
  const factory _CompanyDTO({String? name, String? title}) = _$_CompanyDTO;
  const _CompanyDTO._() : super._();

  factory _CompanyDTO.fromJson(Map<String, dynamic> json) =
      _$_CompanyDTO.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompanyDTOCopyWith<_CompanyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
