// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_entry_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiaryEntryDto _$_$_DiaryEntryDtoFromJson(Map json) {
  return _$_DiaryEntryDto(
    text: json['text'] as String,
    date:
        const DateTimeTimeStampConverter().fromJson(json['date'] as Timestamp),
    mentionList: (json['mentions'] as List<dynamic>)
        .map((e) => MentionDto.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
  );
}

Map<String, dynamic> _$_$_DiaryEntryDtoToJson(_$_DiaryEntryDto instance) {
  final val = <String, dynamic>{
    'text': instance.text,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'date', const DateTimeTimeStampConverter().toJson(instance.date));
  val['mentions'] = instance.mentionList.map((e) => e.toJson()).toList();
  return val;
}

_$_MentionDto _$_$_MentionDtoFromJson(Map json) {
  return _$_MentionDto(
    id: json['id'] as String,
    startPos: json['startPos'] as int,
    endPos: json['endPos'] as int,
  );
}

Map<String, dynamic> _$_$_MentionDtoToJson(_$_MentionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startPos': instance.startPos,
      'endPos': instance.endPos,
    };

_$_MentionableDto _$_$_MentionableDtoFromJson(Map json) {
  return _$_MentionableDto(
    name: json['name'] as String,
    imageLink: json['imageLink'] as String?,
  );
}

Map<String, dynamic> _$_$_MentionableDtoToJson(_$_MentionableDto instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageLink', instance.imageLink);
  return val;
}
