import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/diary/diary_entry_application.dart';
import 'package:scorecontacts/application/diary/mention_candidate.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/mention/mention_list_manager.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';
import 'package:scorecontacts/domain/user/diary/i_diary_entry_repository.dart';

part 'add_diary_entry_bloc.freezed.dart';
part 'add_diary_entry_event.dart';
part 'add_diary_entry_state.dart';

@injectable
class AddDiaryEntryBloc extends Bloc<AddDiaryEntryEvent, AddDiaryEntryState> {
  final IDiaryEntryRepository repository;

  AddDiaryEntryBloc(this.repository) : super(AddDiaryEntryState.initial());

  @override
  Stream<AddDiaryEntryState> mapEventToState(AddDiaryEntryEvent event) async* {
    yield* event.map(
      initialize: (e) async* {
        final bool isEditting = e.diaryEntry != null;

        yield state.copyWith(
            mentionListManager:
                MentionListManager(mentionList: e.mentionableList),
            isEditting: isEditting);
      },
      save: (e) async* {
        yield state.copyWith(isSaving: true, savingOrFailureOption: null);

        final Either<DiaryFailure, Unit> savingOrFailure =
            await (state.isEditting
                ? repository.updateDiaryEntry(state.entryField.entry)
                : repository.createDiaryEntry(state.entryField.entry));
        yield state.copyWith(
            isSaving: false, savingOrFailureOption: savingOrFailure);
      },
      onEntryTextChanged: (e) async* {
        final int triggerPos = _findLatestUnusedTrigger(e, e.baseOffset);

        List<IMentionable> mentionCandidates = [];
        if (triggerPos != -1) {
          final String textToCheckMention =
              e.text.substring(triggerPos + 1, e.baseOffset);
          mentionCandidates = state.mentionListManager
              .getMentionCandidatesFromText(text: textToCheckMention);
        }

        yield state.copyWith(
            entryField: state.entryField.copyWith(
          entry: state.entryField.entry.copyWith(text: e.text),
          selectingMention: mentionCandidates.isNotEmpty
              ? MentionCandidate(
                  startPos: triggerPos,
                  endPos: e.baseOffset,
                  candidates: mentionCandidates)
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
        final String appendedName =
            "${e.iMentionable.getName().substring(mentionCandidate.length - triggerLength)} ";

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
                endPos: newOffset - 1,
              )
            ],
          ),
          selectingMention: null,
          baseOffset: newOffset,
          extentOffset: newOffset,
        ));
      },
      removeMention: (e) async* {
        final List<Mention> newMentionList =
            List.of(state.entryField.entry.mentionList);
        final bool couldRemove = newMentionList.remove(e.mention);
        if (!couldRemove) {
          return;
        }
        final String text = state.entryField.entry.text;
        final String newText = text.substring(0, e.mention.startPos) +
            text.substring(e.mention.endPos);

        yield state.copyWith(
            entryField: state.entryField.copyWith(
          entry: state.entryField.entry.copyWith(
            text: newText,
            mentionList: newMentionList,
          ),
          selectingMention: null,
          baseOffset: e.baseOffset - e.mention.length,
          extentOffset: e.extentOffset - e.mention.length,
        ));
      },
      changeDate: (e) async* {
        final DateTime old =
            state.entryField.entry.dateTime(datePos: e.datePos);
        final DateTime newDateTime = DateTime(
            e.dateTime.year,
            e.dateTime.month,
            e.dateTime.day,
            old.hour,
            old.minute);

        yield state.copyWith(
            entryField: state.entryField.copyWith(
                entry: state.entryField.entry.copyWithNewDateTime(
                    dateTime: newDateTime, datePos: e.datePos)));
      },
      changeTime: (e) async* {
        final DateTime old =
            state.entryField.entry.dateTime(datePos: e.datePos);

        final DateTime newDateTime = DateTime(
            old.year,
            old.month,
            old.day,
            e.time.hour,
            e.time.minute);

        yield state.copyWith(
            entryField: state.entryField.copyWith(
                entry: state.entryField.entry.copyWithNewDateTime(
                    dateTime: newDateTime, datePos: e.datePos)));
      },
    );
  }

  int _findLatestUnusedTrigger(_OnEntryTextChanged e, int offsetCheck) {
    if (offsetCheck == -1) {
      // ignore: parameter_assignments
      offsetCheck = e.text.length;
    }
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
