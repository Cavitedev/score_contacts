import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/application/diary/list_diary/selection_entry.dart';
import 'package:scorecontacts/domain/core/filter.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';
import 'package:scorecontacts/domain/user/diary/i_diary_entry_repository.dart';

part 'list_diary_bloc.freezed.dart';
part 'list_diary_event.dart';
part 'list_diary_state.dart';

@injectable
class ListDiaryBloc extends Bloc<ListDiaryEvent, ListDiaryState> {
  final IDiaryEntryRepository repository;

  StreamSubscription<Either<DiaryFailure, List<DiaryEntry>>>? _entriesSubscription;

  ListDiaryBloc(this.repository) : super(const ListDiaryState.initial());

  @override
  Stream<ListDiaryState> mapEventToState(ListDiaryEvent event) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const ListDiaryState.loadInProgress();

        _entriesSubscription?.cancel();
        _entriesSubscription = repository.watchAll().listen((entryEither) {
          add(ListDiaryEvent.diaryEntriesReceived(entryEither));
        });
      },
      diaryEntriesReceived: (e) async* {
        yield e.entriesEither.fold(
          (f) => ListDiaryState.loadFailure(f),
          (list) => ListDiaryState.loadSuccess(
              SuccessListDiary(selectionEntryList: list.toSelectionEntries(),
              filter: const Filter())),
        );
      },
      search: (e) async* {
        yield* state.maybeMap(
            loadSuccess: (state) async* {
              final SuccessListDiary values = state.successValues;
              Filter? filter = values.filter;
              filter = filter?.copyWith(filterSearch: e.text);
              final List<SelectionEntry> entryList = values.selectionEntryList;
              _filterContacts(entryList, filter);
              yield state.copyWith(
                  successValues:
                      values.copyWith(selectionEntryList: entryList, filter: filter));
            },
            orElse: () async* {});
      },
      toggleSelection: (e) async* {
        yield* state.maybeMap(
            loadSuccess: (state) async* {
              e.selectionEntry.toogleSelection();
              yield state.copyWith(
                  successValues: state.successValues.addOrDecrease1SelectedEntry(
                isAdd: e.selectionEntry.isSelected,
              ));
            },
            orElse: () async* {});
      },
      deselectAll: (e) async* {
        yield* state.maybeMap(
            loadSuccess: (state) async* {
              yield state.copyWith(successValues: state.successValues.deselectAll());
            },
            orElse: () async* {});
      },
      selectAll: (e) async* {
        yield* state.maybeMap(
            loadSuccess: (state) async* {
              yield state.copyWith(successValues: state.successValues.selectAll());
            },
            orElse: () async* {});
      },
    );
  }

  void _filterContacts(List<SelectionEntry> entryList, Filter? filter) {

    if (filter == null || filter.filterSearch == null || filter.filterSearch == "") {
      for (final SelectionEntry selectionEntry in entryList) {
        selectionEntry.display = true;
      }
      return;
    }
    for (final SelectionEntry selectionEntry in entryList) {
      selectionEntry.display = selectionEntry.entry.matchPattern(filter.filterSearch!);
    }

  }
}
