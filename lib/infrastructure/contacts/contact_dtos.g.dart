// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactDTO _$_$_ContactDTOFromJson(Map<String, dynamic> json) {
  return _$_ContactDTO(
    nameDataDTO: json['nameData'] == null
        ? null
        : NameDataDTO.fromJson(json['nameData'] as Map<String, dynamic>),
    companiesDTO: (json['companies'] as List)
        ?.map((e) =>
            e == null ? null : CompanyDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    emailsDTO: (json['emails'] as List)
        ?.map((e) => e == null
            ? null
            : LabelObjectDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    phonesDTO: (json['phones'] as List)
        ?.map((e) => e == null
            ? null
            : LabelObjectDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ContactDTOToJson(_$_ContactDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nameData', instance.nameDataDTO?.toJson());
  writeNotNull(
      'companies', instance.companiesDTO?.map((e) => e?.toJson())?.toList());
  writeNotNull('emails', instance.emailsDTO?.map((e) => e?.toJson())?.toList());
  writeNotNull('phones', instance.phonesDTO?.map((e) => e?.toJson())?.toList());
  writeNotNull('serverTimeStamp',
      const ServerTimeStampConverter().toJson(instance.serverTimeStamp));
  return val;
}

_$_NameDataDTO _$_$_NameDataDTOFromJson(Map<String, dynamic> json) {
  return _$_NameDataDTO(
    name: json['name'] as String,
    surname: json['surname'] as String,
  );
}

Map<String, dynamic> _$_$_NameDataDTOToJson(_$_NameDataDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('surname', instance.surname);
  return val;
}

_$_LabelObjectDTO _$_$_LabelObjectDTOFromJson(Map<String, dynamic> json) {
  return _$_LabelObjectDTO(
    name: json['name'] as String,
    label: json['label'] as String,
  );
}

Map<String, dynamic> _$_$_LabelObjectDTOToJson(_$_LabelObjectDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('label', instance.label);
  return val;
}

_$_CompanyDTO _$_$_CompanyDTOFromJson(Map<String, dynamic> json) {
  return _$_CompanyDTO(
    name: json['name'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$_$_CompanyDTOToJson(_$_CompanyDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('title', instance.title);
  return val;
}
