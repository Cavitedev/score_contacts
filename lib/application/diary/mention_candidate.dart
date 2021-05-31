import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';

part 'mention_candidate.freezed.dart';

@freezed
class MentionCandidate with _$MentionCandidate {
  const MentionCandidate._();

  const factory MentionCandidate({
    required int startPos,
    required int endPos,
    required List<IMentionable> candidates,
  }) = _MentionCandidate;

  int get length => endPos - startPos;
}
