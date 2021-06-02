import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
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
    yield* event.map(watchAll: (e) async* {
      yield const ListDiaryState.loadInProgress();

      _entriesSubscription?.cancel();
      _entriesSubscription = repository.watchAll().listen((entryEither) {
        add(ListDiaryEvent.diaryEntriesReceived(entryEither));
      });
    }, diaryEntriesReceived: (e) async* {
      yield e.entriesEither.fold(
        (f) => ListDiaryState.loadFailure(f),
        (list) => ListDiaryState.loadSuccess(list),
      );
    });
  }
}
