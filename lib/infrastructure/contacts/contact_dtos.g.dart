// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactDTO _$_$_ContactDTOFromJson(Map<String, dynamic> json) {
  return _$_ContactDTO(
    nameDataDTO: json['nameDataDTO'] == null
        ? null
        : NameDataDTO.fromJson(json['nameDataDTO'] as Map<String, dynamic>),
    companiesDTO: (json['companiesDTO'] as List)
        ?.map((e) =>
            e == null ? null : CompanyDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    emailsDTO: (json['emailsDTO'] as List)
        ?.map((e) => e == null
            ? null
            : LabelObjectDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    phonesDTO: (json['phonesDTO'] as List)
        ?.map((e) => e == null
            ? null
            : LabelObjectDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ContactDTOToJson(_$_ContactDTO instance) =>
    <String, dynamic>{
      'nameDataDTO': instance.nameDataDTO?.toJson(),
      'companiesDTO': instance.companiesDTO?.map((e) => e?.toJson())?.toList(),
      'emailsDTO': instance.emailsDTO?.map((e) => e?.toJson())?.toList(),
      'phonesDTO': instance.phonesDTO?.map((e) => e?.toJson())?.toList(),
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };

_$_NameDataDTO _$_$_NameDataDTOFromJson(Map<String, dynamic> json) {
  return _$_NameDataDTO(
    name: json['name'] as String,
    surname: json['surname'] as String,
  );
}

Map<String, dynamic> _$_$_NameDataDTOToJson(_$_NameDataDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
    };

_$_LabelObjectDTO<T> _$_$_LabelObjectDTOFromJson<T extends ILabelObject>(
    Map<String, dynamic> json) {
  return _$_LabelObjectDTO<T>(
    name: json['name'] as String,
    label: json['label'] as String,
  );
}

Map<String, dynamic> _$_$_LabelObjectDTOToJson<T extends ILabelObject>(
        _$_LabelObjectDTO<T> instance) =>
    <String, dynamic>{
      'name': instance.name,
      'label': instance.label,
    };

_$_CompanyDTO _$_$_CompanyDTOFromJson(Map<String, dynamic> json) {
  return _$_CompanyDTO(
    name: json['name'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$_$_CompanyDTOToJson(_$_CompanyDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
    };
