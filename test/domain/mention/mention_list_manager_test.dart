import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mention_list_manager.dart';

void main() {
  group("getMentionsFromText method", () {
    test("On no data return empty list", () {
      const manager = MentionListManager(mentionList: []);

      final mentionList =
          manager.getMentionCandidatesFromText(text: "");

      expect(mentionList.length, 0);
    });

    test("On text with no matches returns empty list", () {
      const manager =
          MentionListManager(mentionList: [Mention(id: "1", name: "matchn't")]);

      final mentionList = manager.getMentionCandidatesFromText(
          text: "macth");

      expect(mentionList.length, 0);
    });

    test("Return match when text is same as match with 1 match", () {
      const mention = Mention(id: "1", name: "match");
      const manager = MentionListManager(mentionList: [mention]);

      final mentionList = manager.getMentionCandidatesFromText(
          text: "match");

      expect(mentionList[0], mention);
    });
  });
}
