import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/mention/mention_list_manager.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';

void main() {
  group("getMentionsFromText method", () {
    test("On no data return empty list", () {
      const manager = MentionListManager(mentionList: []);

      final mentionList = manager.getMentionCandidatesFromText(text: "");

      expect(mentionList.length, 0);
    });

    test("On text with no matches returns empty list", () {
      final manager = MentionListManager(mentionList: [
        Contact(id: UniqueID(), nameData: const NameData(firstName: "Name"))
      ]);

      final mentionList = manager.getMentionCandidatesFromText(text: "macth");

      expect(mentionList.length, 0);
    });

    test("Return match when text is same as match with 1 match", () {
      final IMentionable mention =
          Contact(id: UniqueID(), nameData: const NameData(firstName: "match"));
      final manager = MentionListManager(mentionList: [mention]);

      final mentionList = manager.getMentionCandidatesFromText(text: "match");

      expect(mentionList[0], mention);
    });
  });
}
