import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/mention/mention.dart';

part 'diary_entry.freezed.dart';

@freezed
class DiaryEntry with _$DiaryEntry {
  const factory DiaryEntry({
    required String text,
    required List<Mention> mentionList,
  }) = _DiaryEntry;

  factory DiaryEntry.empty() => const DiaryEntry(text: "", mentionList: []);
}
