import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/add_diary_scaffold.dart';

class AddDiaryPage extends StatelessWidget {
  final List<IMentionable> mentionableList;

  const AddDiaryPage({
    Key? key,
    required this.mentionableList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddDiaryEntryBloc>(
      create: (_) {
        return getIt<AddDiaryEntryBloc>()
          ..add(
              AddDiaryEntryEvent.initialize(mentionableList: mentionableList));
      },
      child: const AddDiaryScaffold(),
    );
  }
}
