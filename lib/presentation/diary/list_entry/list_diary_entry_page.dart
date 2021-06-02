import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/list_diary_bloc.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/presentation/diary/list_entry/list_diary_entry_scaffold.dart';

class ListDiaryEntryPage extends StatelessWidget {

final IMentionable? mentionable;


const ListDiaryEntryPage({this.mentionable});

@override
  Widget build(BuildContext context) {
    return BlocProvider<ListDiaryBloc>(
      create: (context) => getIt<ListDiaryBloc>(),
      child: ListDiaryEntryScaffold(),
    );
  }
}
