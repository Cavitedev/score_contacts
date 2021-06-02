import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

part 'list_diary_bloc.freezed.dart';
part 'list_diary_event.dart';
part 'list_diary_state.dart';

@injectable
class ListDiaryBloc extends Bloc<ListDiaryEvent, ListDiaryState> {
  ListDiaryBloc() : super(ListDiaryState.empty());

  @override
  Stream<ListDiaryState> mapEventToState(ListDiaryEvent event) async* {
    yield* event.map(initialize: (e) async* {

      yield state.copyWith(
        mentionable: e.mentionable
      );

    });

  }
}
