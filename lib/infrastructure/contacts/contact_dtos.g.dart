// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactDTO _$_$_ContactDTOFromJson(Map json) {
  return _$_ContactDTO(
    nameDataDTO: NameDataDTO.fromJson(
        Map<String, dynamic>.from(json['nameData'] as Map)),
    companiesDTO: (json['companies'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : CompanyDTO.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    emailsDTO: (json['emails'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : LabelObjectDTO.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    phonesDTO: (json['phones'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : LabelObjectDTO.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ContactDTOToJson(_$_ContactDTO instance) {
  final val = <String, dynamic>{
    'nameData': instance.nameDataDTO.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'companies', instance.companiesDTO?.map((e) => e?.toJson()).toList());
  writeNotNull('emails', instance.emailsDTO?.map((e) => e?.toJson()).toList());
  writeNotNull('phones', instance.phonesDTO?.map((e) => e?.toJson()).toList());
  writeNotNull('serverTimeStamp',
      const ServerTimeStampConverter().toJson(instance.serverTimeStamp));
  return val;
}

_$_NameDataDTO _$_$_NameDataDTOFromJson(Map json) {
  return _$_NameDataDTO(
    name: json['name'] as String?,
    surname: json['surname'] as String?,
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

_$_LabelObjectDTO _$_$_LabelObjectDTOFromJson(Map json) {
  return _$_LabelObjectDTO(
    name: json['name'] as String?,
    label: json['label'] as String?,
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

_$_CompanyDTO _$_$_CompanyDTOFromJson(Map json) {
  return _$_CompanyDTO(
    name: json['name'] as String?,
    title: json['title'] as String?,
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
