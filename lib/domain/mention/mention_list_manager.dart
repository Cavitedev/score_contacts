import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';

part 'mention_list_manager.freezed.dart';

@freezed
class MentionListManager with _$MentionListManager {
  const MentionListManager._();

  const factory MentionListManager({required List<IMentionable> mentionList}) =
      _MentionListManager;

  factory MentionListManager.empty() =>
      const MentionListManager(mentionList: []);

  /// Receive [text] to check which mentions starts with the same text
  List<IMentionable> getMentionCandidatesFromText({required String text}) {
    return mentionList
        .where((mention) => text.startsWith(mention.getName()))
        .toList();
  }
}
