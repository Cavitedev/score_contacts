import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mentionable.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

void main() {
  group('Update text from database data', () {
    test(
        'Given an entry with no mentions, updating with no mentionables should return the same entry',
        () {
      final entry = DiaryEntry.empty().copyWith(text: "Test");

      final updatedEntry = entry.updateStringMentions([]);
      expect(updatedEntry, entry);
    });

    test(
        'Given an entry with mentions, updating with no mentionables should delete mention without changing the text',
        () {
      final entry = DiaryEntry.empty().copyWith(text: "Test @a ", mentionList: [
        const Mention(
          iMentionable: Mentionable("a"),
          startPos: 5,
          endPos: 7,
        )
      ]);

      final updatedEntry = entry.updateStringMentions([]);
      expect(updatedEntry, entry.copyWith(mentionList: []));
    });

    test(
        'Given an entry with mentions, updating mentionable text, changes text and mentionList',
        () {
      final entry = DiaryEntry.empty().copyWith(text: "Test @a ", mentionList: [
        const Mention(
          iMentionable: Mentionable("a"),
          startPos: 5,
          endPos: 7,
        )
      ]);

      final updatedEntry = entry.updateStringMentions([const Mentionable("ab")]);
      expect(
        updatedEntry,
        entry.copyWith(mentionList: [
          const Mention(
            iMentionable: Mentionable("ab"),
            startPos: 5,
            endPos: 8,
          )
        ], text: "Test @ab "),
      );
    });

    test(
        'Given an entry with mentions, updating mentionable text with implementation, changes text and mentionList',
        () {
      final entry = DiaryEntry.empty().copyWith(text: "Test @a ", mentionList: [
        Mention(
          iMentionable: Mentionable(
            "a",
            uniqueID: UniqueID.fromUniqueString("test"),
          ),
          startPos: 5,
          endPos: 7,
        )
      ]);

      final Contact contactMentionable = Contact(
          id: UniqueID.fromUniqueString("test"),
          nameData: const NameData(
            firstName: "ab",
          ));

      final updatedEntry = entry.updateStringMentions([contactMentionable]);
      expect(
        updatedEntry,
        entry.copyWith(mentionList: [
          Mention(
            iMentionable: contactMentionable,
            startPos: 5,
            endPos: 8,
          )
        ], text: "Test @ab "),
      );
    });
  });

  group('Is all day', () {
    test('Two different dates do not work', () {
      final entry = DiaryEntry.empty().copyWith(
          startDateTime: DateTime.utc(2000, 1, 1, 10, 20),
          endDateTime: DateTime.utc(2001, 2, 2, 20, 30));

      final bool actual = entry.isAllDay();

      expect(actual, false);
    });

    test('dates with 00:00 and 23:59 is all day', () {
      final entry = DiaryEntry.empty().copyWith(
          startDateTime: DateTime.utc(2000, 1, 1, 0, 0),
          endDateTime: DateTime.utc(2000, 1, 2, 23, 59));

      final bool actual = entry.isAllDay();

      expect(actual, true);
    });

    test('dates with 00:01 and 23:59 is not all day', () {
      final entry = DiaryEntry.empty().copyWith(
          startDateTime: DateTime.utc(2000, 1, 1, 0, 1),
          endDateTime: DateTime.utc(2000, 1, 2, 23, 59));

      final bool actual = entry.isAllDay();

      expect(actual, false);
    });

    test('dates with 01:00 and 23:59 is not all day', () {
      final entry = DiaryEntry.empty().copyWith(
          startDateTime: DateTime.utc(2000, 1, 1, 1),
          endDateTime: DateTime.utc(2000, 1, 2, 23, 59));

      final bool actual = entry.isAllDay();

      expect(actual, false);
    });
  });
}
