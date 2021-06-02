import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mentionable.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

part 'diary_entry_dtos.freezed.dart';
part 'diary_entry_dtos.g.dart';

@freezed
class DiaryEntryDto with _$DiaryEntryDto {
  const DiaryEntryDto._();

  const factory DiaryEntryDto({
    @JsonKey(ignore: true) String? id,
    @JsonKey(name: "text") required String text,
    @JsonKey(name: "mentions") required List<MentionDto> mentionList,
  }) = _DiaryEntryDto;

  factory DiaryEntryDto.fromDomain(DiaryEntry domain) {
    return DiaryEntryDto(
      id: domain.id.value,
      text: domain.text,
      mentionList: domain.mentionList
          .map((mention) => MentionDto.fromDomain(mention))
          .toList(),
    );
  }

  DiaryEntry toDomain() {
    return DiaryEntry(
      id: UniqueID.fromUniqueString(id!),
      text: text,
      mentionList: mentionList.map((mention) => mention.toDomain()).toList(),
    );
  }

  factory DiaryEntryDto.fromJson(Map<String, dynamic> json) =>
      _$DiaryEntryDtoFromJson(json);
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

  Mention toDomain() {
    return Mention(
      startPos: startPos,
      endPos: endPos,
      iMentionable: mentionable!.toDomain(id: id),
    );
  }

  factory MentionDto.fromJson(Map<String, dynamic> json) =>
      _$MentionDtoFromJson(json);
}

@freezed
class MentionableDto with _$MentionableDto {
  const MentionableDto._();

  const factory MentionableDto({
    required String name,
    String? imageLink,
  }) = _MentionableDto;

  factory MentionableDto.fromDomain(IMentionable mentionable) {
    return MentionableDto(
        name: mentionable.getName(), imageLink: mentionable.imageLink);
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
