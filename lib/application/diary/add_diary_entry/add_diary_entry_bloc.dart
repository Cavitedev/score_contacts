import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/diary/diary_entry_application.dart';
import 'package:scorecontacts/application/diary/mention_candidate.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mention_list_manager.dart';

part 'add_diary_entry_bloc.freezed.dart';
part 'add_diary_entry_event.dart';
part 'add_diary_entry_state.dart';

@injectable
class AddDiaryEntryBloc extends Bloc<AddDiaryEntryEvent, AddDiaryEntryState> {
  AddDiaryEntryBloc() : super(AddDiaryEntryState.initial());

  @override
  Stream<AddDiaryEntryState> mapEventToState(AddDiaryEntryEvent event) async* {
    yield* event.map(
      initialize: (e) async* {
        yield state.copyWith(
            mentionListManager:
                MentionListManager(mentionList: e.mentionableList));
      },
      onEntryTextChanged: (e) async* {
        final int triggerPos = _findLatestUnusedTrigger(e, e.baseOffset);

        bool hasTriggerCandidates = false;
        if (triggerPos != -1) {
          final String textToCheckMention =
              e.text.substring(triggerPos + 1, e.baseOffset);
          hasTriggerCandidates = state.mentionListManager
              .getMentionCandidatesFromText(text: textToCheckMention)
              .isNotEmpty;
        }

        yield state.copyWith(
            entryField: state.entryField.copyWith(
          entry: state.entryField.entry.copyWith(text: e.text),
          selectingMention: hasTriggerCandidates == true
              ? MentionCandidate(
                  startPos: triggerPos,
                  endPos: e.baseOffset,
                )
              : null,
          baseOffset: null,
          extentOffset: null,
        ));
      },
      onSelectMention: (e) async* {
        if (state.entryField.selectingMention == null) {
          return;
        }
        final MentionCandidate mentionCandidate =
            state.entryField.selectingMention!;

        // I assume it is 1 as it will always be a @
        const triggerLength = 1;
        final String appendedName = e.iMentionable
            .getName()
            .substring(mentionCandidate.length - triggerLength);

        final String newText =
            state.entryField.entry.text.substring(0, mentionCandidate.endPos) +
                appendedName +
                state.entryField.entry.text.substring(mentionCandidate.endPos);

        final int newOffset = mentionCandidate.endPos + appendedName.length;

        yield state.copyWith(
            entryField: state.entryField.copyWith(
          entry: state.entryField.entry.copyWith(
            text: newText,
            mentionList: [
              ...state.entryField.entry.mentionList,
              Mention(
                iMentionable: e.iMentionable,
                startPos: mentionCandidate.startPos,
                endPos: newOffset,
              )
            ],
          ),
          selectingMention: null,
          baseOffset: newOffset,
          extentOffset: newOffset,
        ));
      },
    );
  }

  int _findLatestUnusedTrigger(_OnEntryTextChanged e, int offsetCheck) {
    int triggerPos = -2;
    while (triggerPos == -2 ||
        state.entryField.entry.mentionList
            .where((mention) => mention.startPos == triggerPos)
            .isNotEmpty) {
      triggerPos = e.text.substring(0, offsetCheck).lastIndexOf(e.trigger);
      if (triggerPos == -1) break;
      // ignore: parameter_assignments
      offsetCheck = triggerPos;
    }
    return triggerPos;
  }
}
