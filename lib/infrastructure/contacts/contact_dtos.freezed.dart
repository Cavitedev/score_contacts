// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ContactDTO _$ContactDTOFromJson(Map<String, dynamic> json) {
  return _ContactDTO.fromJson(json);
}

class _$ContactDTOTearOff {
  const _$ContactDTOTearOff();

// ignore: unused_element
  _ContactDTO call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(name: nameDataName) NameDataDTO nameDataDTO,
      @JsonKey(name: companiesName) List<CompanyDTO> companiesDTO,
      @JsonKey(name: emailsName) List<LabelObjectDTO<ILabelObject>> emailsDTO,
      @JsonKey(name: phonesName) List<LabelObjectDTO<ILabelObject>> phonesDTO,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) {
    return _ContactDTO(
      id: id,
      nameDataDTO: nameDataDTO,
      companiesDTO: companiesDTO,
      emailsDTO: emailsDTO,
      phonesDTO: phonesDTO,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $ContactDTO = _$ContactDTOTearOff();

mixin _$ContactDTO {
  @JsonKey(ignore: true)
  String get id;

  @JsonKey(name: nameDataName)
  NameDataDTO get nameDataDTO;

  @JsonKey(name: companiesName)
  List<CompanyDTO> get companiesDTO;

  @JsonKey(name: emailsName)
  List<LabelObjectDTO<ILabelObject>> get emailsDTO;

  @JsonKey(name: phonesName)
  List<LabelObjectDTO<ILabelObject>> get phonesDTO;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $ContactDTOCopyWith<ContactDTO> get copyWith;
}

abstract class $ContactDTOCopyWith<$Res> {
  factory $ContactDTOCopyWith(
          ContactDTO value, $Res Function(ContactDTO) then) =
      _$ContactDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id,
    @JsonKey(name: nameDataName) NameDataDTO nameDataDTO,
    @JsonKey(name: companiesName) List<CompanyDTO> companiesDTO,
    @JsonKey(name: emailsName) List<LabelObjectDTO<ILabelObject>> emailsDTO,
    @JsonKey(name: phonesName) List<LabelObjectDTO<ILabelObject>> phonesDTO,
    @ServerTimeStampConverter() FieldValue serverTimeStamp});

  $NameDataDTOCopyWith<$Res> get nameDataDTO;
}

class _$ContactDTOCopyWithImpl<$Res> implements $ContactDTOCopyWith<$Res> {
  _$ContactDTOCopyWithImpl(this._value, this._then);

  final ContactDTO _value;
  // ignore: unused_field
  final $Res Function(ContactDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object nameDataDTO = freezed,
    Object companiesDTO = freezed,
    Object emailsDTO = freezed,
    Object phonesDTO = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      nameDataDTO: nameDataDTO == freezed
          ? _value.nameDataDTO
          : nameDataDTO as NameDataDTO,
      companiesDTO: companiesDTO == freezed
          ? _value.companiesDTO
          : companiesDTO as List<CompanyDTO>,
      emailsDTO: emailsDTO == freezed
          ? _value.emailsDTO
          : emailsDTO as List<LabelObjectDTO<ILabelObject>>,
      phonesDTO: phonesDTO == freezed
          ? _value.phonesDTO
          : phonesDTO as List<LabelObjectDTO<ILabelObject>>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }

  @override
  $NameDataDTOCopyWith<$Res> get nameDataDTO {
    if (_value.nameDataDTO == null) {
      return null;
    }
    return $NameDataDTOCopyWith<$Res>(_value.nameDataDTO, (value) {
      return _then(_value.copyWith(nameDataDTO: value));
    });
  }
}

abstract class _$ContactDTOCopyWith<$Res> implements $ContactDTOCopyWith<$Res> {
  factory _$ContactDTOCopyWith(
          _ContactDTO value, $Res Function(_ContactDTO) then) =
      __$ContactDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id,
    @JsonKey(name: nameDataName) NameDataDTO nameDataDTO,
    @JsonKey(name: companiesName) List<CompanyDTO> companiesDTO,
    @JsonKey(name: emailsName) List<LabelObjectDTO<ILabelObject>> emailsDTO,
    @JsonKey(name: phonesName) List<LabelObjectDTO<ILabelObject>> phonesDTO,
    @ServerTimeStampConverter() FieldValue serverTimeStamp});

  @override
  $NameDataDTOCopyWith<$Res> get nameDataDTO;
}

class __$ContactDTOCopyWithImpl<$Res> extends _$ContactDTOCopyWithImpl<$Res>
    implements _$ContactDTOCopyWith<$Res> {
  __$ContactDTOCopyWithImpl(
      _ContactDTO _value, $Res Function(_ContactDTO) _then)
      : super(_value, (v) => _then(v as _ContactDTO));

  @override
  _ContactDTO get _value => super._value as _ContactDTO;

  @override
  $Res call({
    Object id = freezed,
    Object nameDataDTO = freezed,
    Object companiesDTO = freezed,
    Object emailsDTO = freezed,
    Object phonesDTO = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ContactDTO(
      id: id == freezed ? _value.id : id as String,
      nameDataDTO: nameDataDTO == freezed
          ? _value.nameDataDTO
          : nameDataDTO as NameDataDTO,
      companiesDTO: companiesDTO == freezed
          ? _value.companiesDTO
          : companiesDTO as List<CompanyDTO>,
      emailsDTO: emailsDTO == freezed
          ? _value.emailsDTO
          : emailsDTO as List<LabelObjectDTO<ILabelObject>>,
      phonesDTO: phonesDTO == freezed
          ? _value.phonesDTO
          : phonesDTO as List<LabelObjectDTO<ILabelObject>>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_ContactDTO extends _ContactDTO {
  const _$_ContactDTO({@JsonKey(ignore: true) this.id,
    @JsonKey(name: nameDataName) this.nameDataDTO,
    @JsonKey(name: companiesName) this.companiesDTO,
    @JsonKey(name: emailsName) this.emailsDTO,
    @JsonKey(name: phonesName) this.phonesDTO,
    @required @ServerTimeStampConverter() this.serverTimeStamp})
      : assert(serverTimeStamp != null),
        super._();

  factory _$_ContactDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  @JsonKey(name: nameDataName)
  final NameDataDTO nameDataDTO;
  @override
  @JsonKey(name: companiesName)
  final List<CompanyDTO> companiesDTO;
  @override
  @JsonKey(name: emailsName)
  final List<LabelObjectDTO<ILabelObject>> emailsDTO;
  @override
  @JsonKey(name: phonesName)
  final List<LabelObjectDTO<ILabelObject>> phonesDTO;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ContactDTO(id: $id, nameDataDTO: $nameDataDTO, companiesDTO: $companiesDTO, emailsDTO: $emailsDTO, phonesDTO: $phonesDTO, serverTimeStamp: $serverTimeStamp)';
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
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$ContactDTOCopyWith<_ContactDTO> get copyWith =>
      __$ContactDTOCopyWithImpl<_ContactDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactDTOToJson(this);
  }
}

abstract class _ContactDTO extends ContactDTO {
  const _ContactDTO._() : super._();

  const factory _ContactDTO({@JsonKey(ignore: true) String id,
    @JsonKey(name: nameDataName) NameDataDTO nameDataDTO,
    @JsonKey(name: companiesName) List<CompanyDTO> companiesDTO,
    @JsonKey(name: emailsName) List<LabelObjectDTO<ILabelObject>> emailsDTO,
    @JsonKey(name: phonesName) List<LabelObjectDTO<ILabelObject>> phonesDTO,
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) = _$_ContactDTO;

  factory _ContactDTO.fromJson(Map<String, dynamic> json) =
  _$_ContactDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;

  @override
  @JsonKey(name: nameDataName)
  NameDataDTO get nameDataDTO;

  @override
  @JsonKey(name: companiesName)
  List<CompanyDTO> get companiesDTO;

  @override
  @JsonKey(name: emailsName)
  List<LabelObjectDTO<ILabelObject>> get emailsDTO;

  @override
  @JsonKey(name: phonesName)
  List<LabelObjectDTO<ILabelObject>> get phonesDTO;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ContactDTOCopyWith<_ContactDTO> get copyWith;
}

NameDataDTO _$NameDataDTOFromJson(Map<String, dynamic> json) {
  return _NameDataDTO.fromJson(json);
}

class _$NameDataDTOTearOff {
  const _$NameDataDTOTearOff();

// ignore: unused_element
  _NameDataDTO call({String name, String surname}) {
    return _NameDataDTO(
      name: name,
      surname: surname,
    );
  }
}

// ignore: unused_element
const $NameDataDTO = _$NameDataDTOTearOff();

mixin _$NameDataDTO {
  String get name;
  String get surname;

  Map<String, dynamic> toJson();
  $NameDataDTOCopyWith<NameDataDTO> get copyWith;
}

abstract class $NameDataDTOCopyWith<$Res> {
  factory $NameDataDTOCopyWith(
          NameDataDTO value, $Res Function(NameDataDTO) then) =
      _$NameDataDTOCopyWithImpl<$Res>;
  $Res call({String name, String surname});
}

class _$NameDataDTOCopyWithImpl<$Res> implements $NameDataDTOCopyWith<$Res> {
  _$NameDataDTOCopyWithImpl(this._value, this._then);

  final NameDataDTO _value;
  // ignore: unused_field
  final $Res Function(NameDataDTO) _then;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
    ));
  }
}

abstract class _$NameDataDTOCopyWith<$Res>
    implements $NameDataDTOCopyWith<$Res> {
  factory _$NameDataDTOCopyWith(
          _NameDataDTO value, $Res Function(_NameDataDTO) then) =
      __$NameDataDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, String surname});
}

class __$NameDataDTOCopyWithImpl<$Res> extends _$NameDataDTOCopyWithImpl<$Res>
    implements _$NameDataDTOCopyWith<$Res> {
  __$NameDataDTOCopyWithImpl(
      _NameDataDTO _value, $Res Function(_NameDataDTO) _then)
      : super(_value, (v) => _then(v as _NameDataDTO));

  @override
  _NameDataDTO get _value => super._value as _NameDataDTO;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
  }) {
    return _then(_NameDataDTO(
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
    ));
  }
}

@JsonSerializable()
class _$_NameDataDTO extends _NameDataDTO {
  const _$_NameDataDTO({this.name, this.surname}) : super._();

  factory _$_NameDataDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_NameDataDTOFromJson(json);

  @override
  final String name;
  @override
  final String surname;

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

  @override
  _$NameDataDTOCopyWith<_NameDataDTO> get copyWith =>
      __$NameDataDTOCopyWithImpl<_NameDataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NameDataDTOToJson(this);
  }
}

abstract class _NameDataDTO extends NameDataDTO {
  const _NameDataDTO._() : super._();
  const factory _NameDataDTO({String name, String surname}) = _$_NameDataDTO;

  factory _NameDataDTO.fromJson(Map<String, dynamic> json) =
      _$_NameDataDTO.fromJson;

  @override
  String get name;
  @override
  String get surname;
  @override
  _$NameDataDTOCopyWith<_NameDataDTO> get copyWith;
}

LabelObjectDTO<T> _$LabelObjectDTOFromJson<T extends ILabelObject>(
    Map<String, dynamic> json) {
  return _LabelObjectDTO<T>.fromJson(json);
}

class _$LabelObjectDTOTearOff {
  const _$LabelObjectDTOTearOff();

// ignore: unused_element
  _LabelObjectDTO<T> call<T extends ILabelObject>({String name, String label}) {
    return _LabelObjectDTO<T>(
      name: name,
      label: label,
    );
  }
}

// ignore: unused_element
const $LabelObjectDTO = _$LabelObjectDTOTearOff();

mixin _$LabelObjectDTO<T extends ILabelObject> {
  String get name;
  String get label;

  Map<String, dynamic> toJson();
  $LabelObjectDTOCopyWith<T, LabelObjectDTO<T>> get copyWith;
}

abstract class $LabelObjectDTOCopyWith<T extends ILabelObject, $Res> {
  factory $LabelObjectDTOCopyWith(
          LabelObjectDTO<T> value, $Res Function(LabelObjectDTO<T>) then) =
      _$LabelObjectDTOCopyWithImpl<T, $Res>;
  $Res call({String name, String label});
}

class _$LabelObjectDTOCopyWithImpl<T extends ILabelObject, $Res>
    implements $LabelObjectDTOCopyWith<T, $Res> {
  _$LabelObjectDTOCopyWithImpl(this._value, this._then);

  final LabelObjectDTO<T> _value;
  // ignore: unused_field
  final $Res Function(LabelObjectDTO<T>) _then;

  @override
  $Res call({
    Object name = freezed,
    Object label = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

abstract class _$LabelObjectDTOCopyWith<T extends ILabelObject, $Res>
    implements $LabelObjectDTOCopyWith<T, $Res> {
  factory _$LabelObjectDTOCopyWith(
          _LabelObjectDTO<T> value, $Res Function(_LabelObjectDTO<T>) then) =
      __$LabelObjectDTOCopyWithImpl<T, $Res>;
  @override
  $Res call({String name, String label});
}

class __$LabelObjectDTOCopyWithImpl<T extends ILabelObject, $Res>
    extends _$LabelObjectDTOCopyWithImpl<T, $Res>
    implements _$LabelObjectDTOCopyWith<T, $Res> {
  __$LabelObjectDTOCopyWithImpl(
      _LabelObjectDTO<T> _value, $Res Function(_LabelObjectDTO<T>) _then)
      : super(_value, (v) => _then(v as _LabelObjectDTO<T>));

  @override
  _LabelObjectDTO<T> get _value => super._value as _LabelObjectDTO<T>;

  @override
  $Res call({
    Object name = freezed,
    Object label = freezed,
  }) {
    return _then(_LabelObjectDTO<T>(
      name: name == freezed ? _value.name : name as String,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

@JsonSerializable()
class _$_LabelObjectDTO<T extends ILabelObject> extends _LabelObjectDTO<T> {
  const _$_LabelObjectDTO({this.name, this.label}) : super._();

  factory _$_LabelObjectDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_LabelObjectDTOFromJson(json);

  @override
  final String name;
  @override
  final String label;

  @override
  String toString() {
    return 'LabelObjectDTO<$T>(name: $name, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LabelObjectDTO<T> &&
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

  @override
  _$LabelObjectDTOCopyWith<T, _LabelObjectDTO<T>> get copyWith =>
      __$LabelObjectDTOCopyWithImpl<T, _LabelObjectDTO<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LabelObjectDTOToJson(this);
  }
}

abstract class _LabelObjectDTO<T extends ILabelObject>
    extends LabelObjectDTO<T> {
  const _LabelObjectDTO._() : super._();

  const factory _LabelObjectDTO({String name, String label}) =
  _$_LabelObjectDTO<T>;

  factory _LabelObjectDTO.fromJson(Map<String, dynamic> json) =
      _$_LabelObjectDTO<T>.fromJson;

  @override
  String get name;
  @override
  String get label;
  @override
  _$LabelObjectDTOCopyWith<T, _LabelObjectDTO<T>> get copyWith;
}

CompanyDTO _$CompanyDTOFromJson(Map<String, dynamic> json) {
  return _CompanyDTO.fromJson(json);
}

class _$CompanyDTOTearOff {
  const _$CompanyDTOTearOff();

// ignore: unused_element
  _CompanyDTO call({String name, String title}) {
    return _CompanyDTO(
      name: name,
      title: title,
    );
  }
}

// ignore: unused_element
const $CompanyDTO = _$CompanyDTOTearOff();

mixin _$CompanyDTO {
  String get name;
  String get title;

  Map<String, dynamic> toJson();
  $CompanyDTOCopyWith<CompanyDTO> get copyWith;
}

abstract class $CompanyDTOCopyWith<$Res> {
  factory $CompanyDTOCopyWith(
          CompanyDTO value, $Res Function(CompanyDTO) then) =
      _$CompanyDTOCopyWithImpl<$Res>;
  $Res call({String name, String title});
}

class _$CompanyDTOCopyWithImpl<$Res> implements $CompanyDTOCopyWith<$Res> {
  _$CompanyDTOCopyWithImpl(this._value, this._then);

  final CompanyDTO _value;
  // ignore: unused_field
  final $Res Function(CompanyDTO) _then;

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

abstract class _$CompanyDTOCopyWith<$Res> implements $CompanyDTOCopyWith<$Res> {
  factory _$CompanyDTOCopyWith(
          _CompanyDTO value, $Res Function(_CompanyDTO) then) =
      __$CompanyDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, String title});
}

class __$CompanyDTOCopyWithImpl<$Res> extends _$CompanyDTOCopyWithImpl<$Res>
    implements _$CompanyDTOCopyWith<$Res> {
  __$CompanyDTOCopyWithImpl(
      _CompanyDTO _value, $Res Function(_CompanyDTO) _then)
      : super(_value, (v) => _then(v as _CompanyDTO));

  @override
  _CompanyDTO get _value => super._value as _CompanyDTO;

  @override
  $Res call({
    Object name = freezed,
    Object title = freezed,
  }) {
    return _then(_CompanyDTO(
      name: name == freezed ? _value.name : name as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

@JsonSerializable()
class _$_CompanyDTO extends _CompanyDTO {
  const _$_CompanyDTO({this.name, this.title}) : super._();

  factory _$_CompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CompanyDTOFromJson(json);

  @override
  final String name;
  @override
  final String title;

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

  @override
  _$CompanyDTOCopyWith<_CompanyDTO> get copyWith =>
      __$CompanyDTOCopyWithImpl<_CompanyDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CompanyDTOToJson(this);
  }
}

abstract class _CompanyDTO extends CompanyDTO {
  const _CompanyDTO._() : super._();
  const factory _CompanyDTO({String name, String title}) = _$_CompanyDTO;

  factory _CompanyDTO.fromJson(Map<String, dynamic> json) =
      _$_CompanyDTO.fromJson;

  @override
  String get name;
  @override
  String get title;
  @override
  _$CompanyDTOCopyWith<_CompanyDTO> get copyWith;
}
