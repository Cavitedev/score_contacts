import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/mention.dart';

part 'diary_entry.freezed.dart';

@freezed
class DiaryEntry with _$DiaryEntry {
  const factory DiaryEntry({
    required UniqueID id,
    required DateTime date,
    required String text,
    required List<Mention> mentionList,
  }) = _DiaryEntry;

  factory DiaryEntry.empty() => DiaryEntry(
        id: UniqueID(),
        text: "",
        mentionList: [],
        date: DateTime.now()
      );
}
