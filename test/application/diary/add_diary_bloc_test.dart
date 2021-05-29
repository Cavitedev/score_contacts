import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/application/diary/diary_entry_application.dart';
import 'package:scorecontacts/application/diary/mention_candidate.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mention_list_manager.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

import 'mentionable.dart';

main() {
  const MentionListManager mentionListManager =
      MentionListManager(mentionList: [Mentionable("name")]);

  group('test field changed', () {
    blocTest(
      'Adding normal text only modifies text',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc addBloc) => addBloc
        ..add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]))
        ..add(
          txtChngEvent("t", 1),
        ),
      skip: 1,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "t", mentionList: []),
            ),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Writing trigger with empty mention does not modify selectingMention',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc addBloc) => addBloc
        ..add(const AddDiaryEntryEvent.initialize(mentionableList: []))
        ..add(
          txtChngEvent("@", 1),
        ),
      skip: 1,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "@", mentionList: []),
            ),
            mentionListManager: MentionListManager(mentionList: []))
      ],
    );

    blocTest(
      'Writing trigger with non-empty mention list converts selecting mention to true',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc addBloc) => addBloc
        ..add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]))
        ..add(
          txtChngEvent("@", 1),
        ),
      skip: 1,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
                entry: DiaryEntry(text: "@", mentionList: []),
                selectingMention: MentionCandidate(startPos: 0, endPos: 1)),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Writing trigger characters with 0 matches return false on selecting mention',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));
        addtxtToBloc(bloc, "@a");
      },
      skip: 2,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "@a", mentionList: []),
            ),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Writing trigger characters with over 0 matches return true on selecting mention',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));
        addtxtToBloc(bloc, "@n");
      },
      skip: 2,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
                entry: DiaryEntry(text: "@n", mentionList: []),
                selectingMention: MentionCandidate(startPos: 0, endPos: 2)),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Writing trigger characters with over 0 matches at the middle of the text return true on selecting mention',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));
        addtxtToBloc(bloc, "f @n");
      },
      skip: 4,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
                entry: DiaryEntry(text: "f @n", mentionList: []),
                selectingMention: MentionCandidate(startPos: 2, endPos: 4)),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Ignore matches without trigger',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));

        bloc.add(txtChngEvent("n"));
      },
      skip: 1,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "n", mentionList: []),
            ),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Ignore matches to the right',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));
        bloc.emit(const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "@name", mentionList: []),
            ),
            mentionListManager: mentionListManager));
        bloc.add(txtChngEvent(" @name", 1));
      },
      skip: 1,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: " @name", mentionList: []),
            ),
            mentionListManager: mentionListManager)
      ],
    );

    const Mention firstNameMention =
        Mention(iMentionable: Mentionable("name"), startPos: 0, endPos: 5);

    blocTest(
      'Ignore matches that are already relations',
      build: () => AddDiaryEntryBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name"), Mentionable("name2")]));
        bloc.emit(const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "@name", mentionList: [firstNameMention]),
            ),
            mentionListManager: MentionListManager(
                mentionList: [Mentionable("name"), Mentionable("name2")])));
        bloc.add(txtChngEvent("@name2"));
      },
      skip: 1,
      expect: () => [
        const AddDiaryEntryState(
            entryField: DiaryEntryApplication(
              entry:
                  DiaryEntry(text: "@name2", mentionList: [firstNameMention]),
            ),
            mentionListManager: MentionListManager(
                mentionList: [Mentionable("name"), Mentionable("name2")]))
      ],
    );
  });

  group("On select mention event", () {
    test('If there is no active mention to complete do nothing', () async {
      final bloc = AddDiaryEntryBloc();
      bloc.add(const AddDiaryEntryEvent.onSelectMention(
          iMentionable: Mentionable("name")));

      await expectLater(bloc.stream, emitsInOrder([]));
    });

    test('If there is an active mention add to mentions list', () async {
      const mentionable = Mentionable("name");

      final bloc = AddDiaryEntryBloc();
      bloc.emit(const AddDiaryEntryState(
          entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "@name", mentionList: []),
              selectingMention: MentionCandidate(startPos: 0, endPos: 5)),
          mentionListManager: MentionListManager(mentionList: [mentionable])));

      bloc.add(
          const AddDiaryEntryEvent.onSelectMention(iMentionable: mentionable));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          predicate<AddDiaryEntryState>((state) =>
              state.entryField ==
              const DiaryEntryApplication(
                  entry: DiaryEntry(text: "@name", mentionList: [
                    Mention(iMentionable: mentionable, startPos: 0, endPos: 5)
                  ]),
                  baseOffset: 5,
                  extentOffset: 5))
        ]),
      );
    });

    test('If there is an active mention complete text', () async {
      const mentionable = Mentionable("name");

      final bloc = AddDiaryEntryBloc();
      bloc.emit(const AddDiaryEntryState(
          entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "@", mentionList: []),
              selectingMention: MentionCandidate(startPos: 0, endPos: 1)),
          mentionListManager: MentionListManager(mentionList: [mentionable])));

      bloc.add(
          const AddDiaryEntryEvent.onSelectMention(iMentionable: mentionable));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          predicate<AddDiaryEntryState>((state) =>
              state.entryField ==
              const DiaryEntryApplication(
                  entry: DiaryEntry(text: "@name", mentionList: [
                    Mention(iMentionable: mentionable, startPos: 0, endPos: 5)
                  ]),
                  baseOffset: 5,
                  extentOffset: 5))
        ]),
      );
    });

    test('If there is an active mention complete text with prefix and suffix',
        () async {
      const mentionable = Mentionable("name");

      final bloc = AddDiaryEntryBloc();
      bloc.emit(const AddDiaryEntryState(
          entryField: DiaryEntryApplication(
              entry: DiaryEntry(text: "<=@=>", mentionList: []),
              selectingMention: MentionCandidate(startPos: 2, endPos: 3)),
          mentionListManager: MentionListManager(mentionList: [mentionable])));

      bloc.add(
          const AddDiaryEntryEvent.onSelectMention(iMentionable: mentionable));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          predicate<AddDiaryEntryState>((state) =>
              state.entryField ==
              const DiaryEntryApplication(
                  entry: DiaryEntry(text: "<=@name=>", mentionList: [
                    Mention(iMentionable: mentionable, startPos: 2, endPos: 7)
                  ]),
                  baseOffset: 7,
                  extentOffset: 7))
        ]),
      );
    });
  });
}

AddDiaryEntryEvent txtChngEvent(String text, [int? offset]) =>
    AddDiaryEntryEvent.onEntryTextChanged(
        text: text,
        baseOffset: offset ?? text.length,
        extentOffset: offset ?? text.length,
        trigger: "@");

void addtxtToBloc(AddDiaryEntryBloc bloc, String text) {
  for (int i = 0; i < text.length; i++) {
    bloc.add(txtChngEvent(text.substring(0, i + 1)));
  }
}
