import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

part 'add_diary_entry_bloc.freezed.dart';
part 'add_diary_entry_event.dart';
part 'add_diary_entry_state.dart';

@injectable
class AddDiaryEntryBloc extends Bloc<AddDiaryEntryEvent, AddDiaryEntryState> {
  AddDiaryEntryBloc() : super(AddDiaryEntryState.initial());

  @override
  Stream<AddDiaryEntryState> mapEventToState(AddDiaryEntryEvent event) async* {
    yield* event.map(initialize: (e) async*{

    });
  }
}