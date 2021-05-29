

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mention_candidate.freezed.dart';

@freezed
class MentionCandidate with _$MentionCandidate{

  const MentionCandidate._();

    const factory MentionCandidate({required int startPos, required int endPos}) = _MentionCandidate;

  int get length => endPos - startPos;

}