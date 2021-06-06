import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mentionable.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/infrastructure/firebase_core/date_time_time_stamp_converter.dart';

part 'diary_entry_dtos.freezed.dart';
part 'diary_entry_dtos.g.dart';

@freezed
class DiaryEntryDto with _$DiaryEntryDto {
  const DiaryEntryDto._();

  static const String mentionIdsName = "mentionIds";

  const factory DiaryEntryDto({
    @JsonKey(ignore: true) String? id,
    @JsonKey(name: "text") required String text,
    @DateTimeTimeStampConverter() required DateTime startDate,
    @DateTimeTimeStampConverter() required DateTime endDate,
    @JsonKey(name: "mentions") required List<MentionDto> mentionList,
    @JsonKey(name: DiaryEntryDto.mentionIdsName) required List<String> mentionIds,
  }) = _DiaryEntryDto;

  factory DiaryEntryDto.fromDomain(DiaryEntry domain) {
    return DiaryEntryDto(
      id: domain.id.value,
      text: domain.text,
      startDate: domain.dateTime(datePos: DatePos.Start),
      endDate: domain.dateTime(datePos: DatePos.End),
      mentionList:
      domain.mentionList.map((mention) => MentionDto.fromDomain(mention)).toList(),
      mentionIds:domain.mentionList.map((mention) => mention.iMentionable.id.value).toList(),
    );
  }

  DiaryEntry toDomain() {
    return DiaryEntry(
      id: UniqueID.fromUniqueString(id!),
      text: text,
      startDateTime: startDate,
      endDateTime: endDate,
      mentionList: mentionList.map((mention) => mention.toDomain(text)).toList(),
    );
  }

  factory DiaryEntryDto.fromJson(Map<String, dynamic> json) =>
      _$DiaryEntryDtoFromJson(json);

  factory DiaryEntryDto.fromfirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      DiaryEntryDto.fromJson(doc.data()!).copyWith(id: doc.id);
}

@freezed
class MentionDto with _$MentionDto {
  const MentionDto._();

  const factory MentionDto({
    required String id,
    required int startPos,
    required int endPos,
    @JsonKey(ignore: true) MentionableDto? mentionable,
  }) = _MentionDto;

  factory MentionDto.fromDomain(Mention mention) {
    return MentionDto(
      id: mention.iMentionable.id.value,
      startPos: mention.startPos,
      endPos: mention.endPos,
      mentionable: MentionableDto.fromDomain(mention.iMentionable),
    );
  }

  Mention toDomain(String text) {
    return Mention(
      startPos: startPos,
      endPos: endPos,
      iMentionable: mentionable?.toDomain(id: id) ??
          Mentionable(
            text.substring(startPos + 1, endPos),
            uniqueID: UniqueID.fromUniqueString(id),
          ),
    );
  }

  factory MentionDto.fromJson(Map<String, dynamic> json) => _$MentionDtoFromJson(json);
}

@freezed
class MentionableDto with _$MentionableDto {
  const MentionableDto._();

  const factory MentionableDto({
    required String name,
    String? imageLink,
  }) = _MentionableDto;

  factory MentionableDto.fromDomain(IMentionable mentionable) {
    return MentionableDto(name: mentionable.getName(), imageLink: mentionable.imageLink);
  }

  Mentionable toDomain({required String id}) {
    return Mentionable(
      name,
      image: imageLink,
      uniqueID: UniqueID.fromUniqueString(id),
    );
  }

  factory MentionableDto.fromJson(Map<String, dynamic> json) =>
      _$MentionableDtoFromJson(json);
}
