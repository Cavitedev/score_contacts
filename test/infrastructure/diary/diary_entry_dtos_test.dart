import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mentionable.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/infrastructure/diary/diary_entry_dtos.dart';

void main() {
  final mentionableDomain = Mentionable(
    "Test",
    image: "http://www.com/image.jpg",
    uniqueID: UniqueID.fromUniqueString("test"),
  );

  const mentionableDto = MentionableDto(
    name: "Test",
    imageLink: "http://www.com/image.jpg",
  );

  group('Mentionable DTO', () {
    final domain = mentionableDomain;

    const dto = mentionableDto;

    test('from domain', () {
      final actualDto = MentionableDto.fromDomain(domain);

      expect(actualDto, dto);
    });

    test('to domain', () {
      final Mentionable actualDomain = dto.toDomain(id: "test");
      expect(actualDomain, domain);
    });
  });

  final mentionDomain = Mention(
    iMentionable: mentionableDomain,
    startPos: 3,
    endPos: 6,
  );

  const mentionDto = MentionDto(
    id: "test",
    mentionable: mentionableDto,
    startPos: 3,
    endPos: 6,
  );

  group('Mention DTO', () {
    final domain = mentionDomain;

    const dto = mentionDto;

    test('from domain', () {
      final actualDto = MentionDto.fromDomain(domain);

      expect(actualDto, dto);
    });

    test('to domain', () {
      final actualDomain = dto.toDomain();

      expect(actualDomain, domain);
    });
  });

  group('Mention DTO', () {
    final domain = DiaryEntry(
      id: UniqueID.fromUniqueString("testDiary"),
      text: "< @te >",
      mentionList: [mentionDomain, mentionDomain],
      date: DateTime.fromMillisecondsSinceEpoch(1000000),
    );

    final dto = DiaryEntryDto(
        id: "testDiary",
        text: "< @te >",
        date: DateTime.fromMillisecondsSinceEpoch(1000000),
        mentionList: [mentionDto, mentionDto]);

    test('from domain', () {
      final actualDto = DiaryEntryDto.fromDomain(domain);

      expect(actualDto, dto);
    });

    test('to domain', () {
      final actualDomain = dto.toDomain();

      expect(actualDomain, domain);
    });

    final Map<String, dynamic> mentionJson = {
      "id": "test",
      "startPos": 3,
      "endPos": 6,
    };

    final Map<String, dynamic> json = {
      "text": "< @te >",
      "date": Timestamp.fromDate(DateTime.fromMillisecondsSinceEpoch(1000000)),
      "mentions": [mentionJson, mentionJson]
    };

    test('to json', () {
      final actual = dto.toJson();
      expect(actual, json);
    });
  });
}
