import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

void main() {
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
