import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';

part 'mention.freezed.dart';

@freezed
class Mention with _$Mention {
  const Mention._();

  const factory Mention({
    required IMentionable iMentionable,
    required int startPos,
    required int endPos,
  }) = _Mention;

  bool isIndexInStartEndPos(int pos) {
    return pos >= startPos && pos < endPos;
  }

  int get length => endPos - startPos;
}
