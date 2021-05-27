import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/mention/mention.dart';

part 'diary_entry_application.freezed.dart';

@freezed
class DiaryEntryApplication with _$DiaryEntryApplication {
  const factory DiaryEntryApplication({
    required String text,
    required List<Mention> mentions,
    int? baseOffset,
    int? extentOffset,
  }) = _DiaryEntryApplication;

  factory DiaryEntryApplication.empty() =>
      const DiaryEntryApplication(text: "", mentions: []);

}
