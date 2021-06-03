import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/mention.dart';

part 'diary_entry.freezed.dart';

enum DatePos {
  // ignore: constant_identifier_names
  Start,
  End
}

@freezed
class DiaryEntry with _$DiaryEntry {
  const DiaryEntry._();

  const factory DiaryEntry({
    required UniqueID id,
    required String text,
    required DateTime startDateTime,
    required DateTime endDateTime,
    required List<Mention> mentionList,
  }) = _DiaryEntry;

  factory DiaryEntry.empty() => DiaryEntry(
        id: UniqueID(),
        text: "",
        mentionList: [],
        startDateTime: DateTime.now(),
        endDateTime: DateTime.now(),
      );

  DateTime dateTime({required DatePos datePos}) =>
      datePos == DatePos.Start ? startDateTime : endDateTime;

  String hour({required DatePos datePos}) =>
      DateFormat.Hm().format(dateTime(datePos: datePos)).toString();

  String date({required DatePos datePos}) =>
      DateFormat.yMMMEd().format(dateTime(datePos: datePos)).toString();

  DiaryEntry copyWithNewDateTime({required DateTime dateTime, required DatePos datePos}) {
    if (datePos == DatePos.Start) {
      return copyWith(startDateTime: dateTime);
    } else {
      return copyWith(endDateTime: dateTime);
    }
  }

  bool isAllDay() {
    if (startDateTime.hour == 0 &&
        endDateTime.hour == 23 &&
        startDateTime.minute == 0 &&
        endDateTime.minute == 59) {
      return true;
    }
    return false;
  }

  bool areDatesValid(){
    return endDateTime.isAfter(startDateTime);
  }

}

extension DateTimeX on DateTime {
  DateTime toAllDayStartDate() => DateTime(year, month, day);

  DateTime toAllDayEndDate() => DateTime(year, month, day, 23, 59);

  DateTime toNotAllDay() => subtract(const Duration(minutes: 1));
}
