import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/application/diary/mention_candidate.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

part 'diary_entry_application.freezed.dart';

@freezed
class DiaryEntryApplication with _$DiaryEntryApplication {
  const factory DiaryEntryApplication({
    required DiaryEntry entry,
    MentionCandidate? selectingMention,
    int? baseOffset,
    int? extentOffset,
  }) = _DiaryEntryApplication;

  factory DiaryEntryApplication.empty() =>  DiaryEntryApplication(
        entry: DiaryEntry.empty(),
      );
}
