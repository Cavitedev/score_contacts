import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';
import 'package:scorecontacts/domain/user/diary/diary_loading.dart';
import 'package:scorecontacts/domain/user/diary/i_diary_entry_repository.dart';

part 'list_diary_actor_bloc.freezed.dart';
part 'list_diary_actor_event.dart';
part 'list_diary_actor_state.dart';

@injectable
class ListDiaryActorBloc extends Bloc<ListDiaryActorEvent, ListDiaryActorState> {
  final IDiaryEntryRepository repository;

  ListDiaryActorBloc(this.repository) : super(const ListDiaryActorState.initial());

  @override
  Stream<ListDiaryActorState> mapEventToState(ListDiaryActorEvent event) async* {
    yield* event.map(delete: (e) async* {
      final int length = e.entryList.length;
      yield ListDiaryActorState.actionInProgress(DiaryLoading.deletingEntries(length));
      final Either<DiaryFailure, Unit> failureOrUnit =
          await repository.deleteDiaryEntryList(e.entryList);

      yield failureOrUnit.fold((f) => ListDiaryActorState.diaryFailure(f),
          (_) => ListDiaryActorState.deleteSucessful(length));
    });
  }
}
