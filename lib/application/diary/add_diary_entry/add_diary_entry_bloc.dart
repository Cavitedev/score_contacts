import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/diary/diary_entry_application.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/mention/mention_list_manager.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

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
            mentionListManager: MentionListManager(mentionList: e.mentionableList));
      },
      onEntryTextChanged: (e) async* {
        yield state.copyWith(
            entryField: state.entryField.copyWith(
          entry: state.diaryEntry.copyWith(text: e.text) ,
          baseOffset: e.baseOffset,
          extentOffset: e.extentOffset,
        ));
      },
    );
  }
}
