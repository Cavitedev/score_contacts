import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/presentation/core/widgets/avatar/custom_circle_avatar.dart';

class SelectMentionWidget extends StatelessWidget {
  const SelectMentionWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDiaryEntryBloc, AddDiaryEntryState>(
      buildWhen: (p,n) => p.entryField.selectingMention != n.entryField.selectingMention,
      builder: (context, state) {
        if (state.entryField.selectingMention == null) {
          return const SizedBox();
        }
        return Column(
          children: state.entryField.selectingMention!.candidates
              .map((candidate) => ListTile(
                    title: Text(candidate.getName()),
                    tileColor: Colors.grey[600],
                    leading: CustomCircleAvatar(
                      name: candidate.getName(),
                      image: candidate.imageLink,
                      child: const Icon(Icons.person),
                    ),
                    onTap: () {
                      context.read<AddDiaryEntryBloc>().add(
                          AddDiaryEntryEvent.onSelectMention(
                              iMentionable: candidate));
                    },
                  ))
              .toList(),
        );
      },
    );
  }
}
