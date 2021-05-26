import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_entry.freezed.dart';

@freezed
class DiaryEntry with _$DiaryEntry {
  const factory DiaryEntry({required String entry}) = _DiaryEntry;

  factory DiaryEntry.empty() => const DiaryEntry(entry: "");

}
