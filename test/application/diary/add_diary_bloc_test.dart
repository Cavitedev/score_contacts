import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/application/diary/diary_entry_application.dart';
import 'package:scorecontacts/application/diary/mention_candidate.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mention_list_manager.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';
import 'package:scorecontacts/domain/user/diary/i_diary_entry_repository.dart';

import 'mentionable.dart';

void main() {
  const MentionListManager mentionListManager =
      MentionListManager(mentionList: [Mentionable("name")]);

  group('test field changed', () {
    blocTest(
      'Adding normal text only modifies text',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc addBloc) => addBloc
        ..add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]))
        ..add(
          txtChngEvent("t", 1),
        ),
      skip: 1,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "t", mentionList: []),
            ),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Writing trigger with empty mention does not modify selectingMention',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc addBloc) => addBloc
        ..add(const AddDiaryEntryEvent.initialize(mentionableList: []))
        ..add(
          txtChngEvent("@", 1),
        ),
      skip: 1,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "@", mentionList: []),
            ),
            mentionListManager: const MentionListManager(mentionList: []))
      ],
    );

    blocTest(
      'Writing trigger with non-empty mention list converts selecting mention to true',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc addBloc) => addBloc
        ..add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]))
        ..add(
          txtChngEvent("@", 1),
        ),
      skip: 1,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
                entry: DiaryEntry.empty().copyWith(text: "@", mentionList: []),
                selectingMention: const MentionCandidate(
                    startPos: 0, endPos: 1, candidates: [Mentionable("name")])),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Writing trigger characters with 0 matches return false on selecting mention',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));
        addtxtToBloc(bloc, "@a");
      },
      skip: 2,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "@a", mentionList: []),
            ),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Writing trigger characters with over 0 matches return true on selecting mention',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));
        addtxtToBloc(bloc, "@n");
      },
      skip: 2,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
                entry: DiaryEntry.empty().copyWith(text: "@n", mentionList: []),
                selectingMention: const MentionCandidate(
                    startPos: 0, endPos: 2, candidates: [Mentionable("name")])),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Writing trigger characters with over 0 matches at the middle of the text return true on selecting mention',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));
        addtxtToBloc(bloc, "f @n");
      },
      skip: 4,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
                entry: DiaryEntry.empty().copyWith(text: "f @n", mentionList: []),
                selectingMention: const MentionCandidate(
                    startPos: 2, endPos: 4, candidates: [Mentionable("name")])),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Ignore matches without trigger',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));

        bloc.add(txtChngEvent("n"));
      },
      skip: 1,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "n", mentionList: []),
            ),
            mentionListManager: mentionListManager)
      ],
    );

    blocTest(
      'Ignore matches to the right',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name")]));
        bloc.emit(AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "@name", mentionList: []),
            ),
            mentionListManager: mentionListManager));
        bloc.add(txtChngEvent(" @name", 1));
      },
      skip: 1,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: " @name", mentionList: []),
            ),
            mentionListManager: mentionListManager)
      ],
    );

    const Mention firstNameMention =
        Mention(iMentionable: Mentionable("name"), startPos: 0, endPos: 5);

    blocTest(
      'Ignore matches that are already relations',
      build: () => createBloc(),
      act: (AddDiaryEntryBloc bloc) {
        bloc.add(const AddDiaryEntryEvent.initialize(
            mentionableList: [Mentionable("name"), Mentionable("name2")]));
        bloc.emit(AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "@name", mentionList: [firstNameMention]),
            ),
            mentionListManager: const MentionListManager(
                mentionList: [Mentionable("name"), Mentionable("name2")])));
        bloc.add(txtChngEvent("@name2"));
      },
      skip: 1,
      expect: () => [
        AddDiaryEntryState.initial().copyWith(
            entryField: DiaryEntryApplication(
              entry:
                  DiaryEntry.empty().copyWith(text: "@name2", mentionList: [firstNameMention]),
            ),
            mentionListManager: const MentionListManager(
                mentionList: [Mentionable("name"), Mentionable("name2")]))
      ],
    );

    test('On empty text with collapsed selection works fine without exceptions',
        () async {
      final bloc = createBloc();
      bloc.add(const AddDiaryEntryEvent.onEntryTextChanged(
          text: "", baseOffset: -1, extentOffset: -1, trigger: "@"));

      await expectLater(
          bloc.stream,
          emits(AddDiaryEntryState.initial().copyWith(
              entryField: DiaryEntryApplication(
                entry: DiaryEntry.empty().copyWith(text: "", mentionList: []),
              ),
              mentionListManager: const MentionListManager(mentionList: []))));
    });
  });

  group("On select mention event", () {
    test('If there is no active mention to complete do nothing', () async {
      final bloc = createBloc();
      bloc.add(const AddDiaryEntryEvent.onSelectMention(
          iMentionable: Mentionable("name")));

      await expectLater(bloc.stream, emitsInOrder([]));
    });

    test('If there is an active mention add to mentions list', () async {
      const mentionable = Mentionable("name");

      final bloc = createBloc();
      bloc.emit(AddDiaryEntryState.initial().copyWith(
          entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "@name", mentionList: []),
              selectingMention: const MentionCandidate(
                  startPos: 0, endPos: 5, candidates: [Mentionable("name")])),
          mentionListManager: const MentionListManager(mentionList: [mentionable])));

      bloc.add(
          const AddDiaryEntryEvent.onSelectMention(iMentionable: mentionable));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          predicate<AddDiaryEntryState>((state) =>
              state.entryField ==
              DiaryEntryApplication(
                  entry: DiaryEntry.empty().copyWith(text: "@name ", mentionList: [
                    const Mention(iMentionable: mentionable, startPos: 0, endPos: 5)
                  ]),
                  baseOffset: 6,
                  extentOffset: 6))
        ]),
      );
    });

    test('If there is an active mention complete text', () async {
      const mentionable = Mentionable("name");

      final bloc = createBloc();
      bloc.emit(AddDiaryEntryState.initial().copyWith(
          entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "@", mentionList: []),
              selectingMention: const MentionCandidate(
                  startPos: 0, endPos: 1, candidates: [Mentionable("name")])),
          mentionListManager: const MentionListManager(mentionList: [mentionable])));

      bloc.add(
          const AddDiaryEntryEvent.onSelectMention(iMentionable: mentionable));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          predicate<AddDiaryEntryState>((state) =>
              state.entryField ==
              DiaryEntryApplication(
                  entry: DiaryEntry.empty().copyWith(text: "@name ", mentionList: [
                    const Mention(iMentionable: mentionable, startPos: 0, endPos: 5)
                  ]),
                  baseOffset: 6,
                  extentOffset: 6))
        ]),
      );
    });

    test('If there is an active mention complete text with prefix and suffix',
        () async {
      const mentionable = Mentionable("name");

      final bloc = createBloc();
      bloc.emit(AddDiaryEntryState.initial().copyWith(
          entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "<=@=>", mentionList: []),
              selectingMention: const MentionCandidate(
                  startPos: 2, endPos: 3, candidates: [Mentionable("name")])),
          mentionListManager: const MentionListManager(mentionList: [mentionable])));

      bloc.add(
          const AddDiaryEntryEvent.onSelectMention(iMentionable: mentionable));

      await expectLater(
        bloc.stream,
        emitsInOrder([
          predicate<AddDiaryEntryState>((state) =>
              state.entryField ==
              DiaryEntryApplication(
                  entry: DiaryEntry.empty().copyWith(text: "<=@name =>", mentionList: [
                    const Mention(iMentionable: mentionable, startPos: 2, endPos: 7)
                  ]),
                  baseOffset: 8,
                  extentOffset: 8))
        ]),
      );
    });
  });

  group('Remove mention event test', () {
    blocTest('Remove non existant mention does nothing',
        build: () => createBloc(),
        act: (AddDiaryEntryBloc bloc) {
          bloc.emit(AddDiaryEntryState.initial().copyWith(
              entryField: DiaryEntryApplication(
                  entry: DiaryEntry.empty().copyWith(text: "@name", mentionList: [])),
              mentionListManager: const MentionListManager(mentionList: [])));

          bloc.add(
            const AddDiaryEntryEvent.removeMention(
              mention: Mention(
                  startPos: 0, endPos: 5, iMentionable: Mentionable("name")),
              baseOffset: 0,
              extentOffset: 0,
            ),
          );
        },
        skip: 1,
        expect: () => []);

    test('Remove mention if exists', () async {
      const mentionable = Mentionable("name");
      const mention = Mention(
        iMentionable: mentionable,
        startPos: 2,
        endPos: 7,
      );
      final bloc = createBloc();
      bloc.emit(AddDiaryEntryState.initial().copyWith(
          entryField: DiaryEntryApplication(
              entry: DiaryEntry.empty().copyWith(text: "<=@name=>", mentionList: [mention])),
          mentionListManager: const MentionListManager(mentionList: [mentionable])));

      bloc.add(const AddDiaryEntryEvent.removeMention(
          mention: mention, baseOffset: 7, extentOffset: 7));

      await expectLater(
        bloc.stream,
        emits(predicate<AddDiaryEntryState>((state) =>
            state.entryField ==
            DiaryEntryApplication(
                entry: DiaryEntry.empty().copyWith(text: "<==>", mentionList: []),
                baseOffset: 2,
                extentOffset: 2))),
      );
    });
  });
}

AddDiaryEntryBloc createBloc() => AddDiaryEntryBloc(FakeDiaryRepository());

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


class FakeDiaryRepository implements IDiaryEntryRepository{
  @override
  Future<Either<DiaryFailure, Unit>> createDiaryEntry(DiaryEntry entry) {
    throw UnimplementedError();
  }

  @override
  Future<Either<DiaryFailure, Unit>> deleteDiaryEntry(DiaryEntry entry) {
    throw UnimplementedError();
  }

  @override
  Future<Either<DiaryFailure, Unit>> updateDiaryEntry(DiaryEntry entry) {
    throw UnimplementedError();
  }

}