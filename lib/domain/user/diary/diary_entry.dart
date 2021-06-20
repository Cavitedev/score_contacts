import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/mention/mention.dart';

part 'diary_entry.freezed.dart';

enum DatePos { start, end }

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
        startDateTime: DateTime.now().subtract(const Duration(minutes: 1)),
        endDateTime: DateTime.now(),
      );

  DateTime dateTime({required DatePos datePos}) =>
      datePos == DatePos.start ? startDateTime : endDateTime;

  String hour({required DatePos datePos}) =>
      DateFormat.Hm().format(dateTime(datePos: datePos)).toString();

  String date({required DatePos datePos}) =>
      DateFormat.yMMMEd().format(dateTime(datePos: datePos)).toString();

  DiaryEntry copyWithNewDateTime({required DateTime dateTime, required DatePos datePos}) {
    if (datePos == DatePos.start) {
      return copyWith(startDateTime: dateTime);
    } else {
      return copyWith(endDateTime: dateTime);
    }
  }

  bool areDatesValid() {
    return endDateTime.isAfter(startDateTime);
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

  bool matchPattern(String filterSearch) {
    return text.toLowerCase().contains(filterSearch.toLowerCase());
  }

  DiaryEntry updateStringMentions(List<IMentionable> mentionableList) {
    if (mentionList.isEmpty) {
      return this;
    }

    mentionList.sort((el1, el2) => el1.startPos.compareTo(el2.startPos));
    final List<Mention> newMentionList = [];
    final StringBuffer newText = StringBuffer();
    int startOffset = 0;
    int mentionPosOffset = 0;
    for (final mention in mentionList) {
      newText.write(text.substring(mentionPosOffset, mention.startPos));
      mentionPosOffset = mention.endPos;

      final IMentionable? newMentionable = mentionableList
          .firstWhereOrNull((mentionable) => mentionable.id == mention.iMentionable.id);

      if (newMentionable == null) {
        newText.write(text.substring(mention.startPos, mention.endPos));
        continue;
      }

      _updateMentionInText(newText, mention, newMentionable);
      final int lengthOffset =
          _updateMentionList(newMentionable, mention, newMentionList, startOffset);

      startOffset += lengthOffset;
    }
    newText.write(text.substring(mentionPosOffset, text.length));

    return copyWith(text: newText.toString(), mentionList: newMentionList);
  }

  int _updateMentionList(IMentionable newMentionable, Mention mention,
      List<Mention> newMentionList, int startOffset) {
    final int lengthOffset = newMentionable.getName().length + 1 - mention.length;
    newMentionList.add(mention.copyWith(
      iMentionable: newMentionable,
      startPos: mention.startPos + startOffset,
      endPos: mention.endPos + lengthOffset + startOffset,
    ));
    return lengthOffset;
  }

  void _updateMentionInText(
      StringBuffer newText, Mention mention, IMentionable newMentionable) {
    newText.write(text.substring(
        mention.startPos, mention.startPos + 1)); //Assume tag takes 1 space
    newText.write(newMentionable.getName());
  }
}

extension DateTimeX on DateTime {
  DateTime toAllDayStartDate() => DateTime(year, month, day);

  DateTime toAllDayEndDate() => DateTime(year, month, day, 23, 59);

  DateTime toNotAllDay() => subtract(const Duration(minutes: 1));
}
