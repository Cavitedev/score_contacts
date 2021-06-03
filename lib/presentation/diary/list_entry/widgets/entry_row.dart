import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class EntryRow extends StatelessWidget {
  final DiaryEntry entry;

  const EntryRow({
    required this.entry,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<ContactWatcherBloc>().state.maybeMap(
              loadSuccess: (state) {
                context.router.push(r.AddDiaryPageRoute(
                    mentionableList: state.stateValues.selectionContactList.toContacts(),
                    diaryEntry: entry));
              },
              orElse: () {},
            );
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(bottom: 8),
        padding: Constants.bigPaddingList,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: Text(entry.text),
      ),
    );
  }
}
