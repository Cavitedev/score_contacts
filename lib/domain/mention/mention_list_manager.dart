import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/mention/mention.dart';

part 'mention_list_manager.freezed.dart';

@freezed
class MentionListManager with _$MentionListManager {
  const MentionListManager._();

  const factory MentionListManager({required List<Mention> mentionList}) =
      _MentionListManager;

  factory MentionListManager.empty() => const MentionListManager(mentionList: []);



  /// Receive [text] to see if it matches with any Mention
  List<Mention> getMentionCandidatesFromText(
      {required String text}) {

    return [];
  }
}
