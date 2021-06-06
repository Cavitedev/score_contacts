import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/list_diary_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/selection_entry.dart';
import 'package:scorecontacts/application/diary/list_diary_actor/list_diary_actor_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/alert_dialogue_cancel_ok.dart';

class SelectedEntriesRowBar extends StatelessWidget {
  final List<SelectionEntry> selectionEntries;
  final bool areAllSelected;

  const SelectedEntriesRowBar({
    Key? key,
    required this.selectionEntries,
    required this.areAllSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int amount = selectionEntries.selectedEntriesAmount();
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.close,
            size: 26,
          ),
          onPressed: () {
            context.read<ListDiaryBloc>().add(const ListDiaryEvent.deselectAll());
          },
        ),
        Expanded(
          child: Text(
            AppLocalization.of(context).translate(
              "select_entries_${amount != 1 ? "plural" : "single"}",
              args: [amount.toString()],
            ),
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.delete,
            size: 26,
          ),
          onPressed: () {
            final actorBloc = context.read<ListDiaryActorBloc>();
            showDialog(
                context: context,
                builder: (context) => AlertDialogueCancelOK(
                      title: AppLocalization.of(context).translate(
                        "confirm_deletion_entries_${amount != 1 ? "plural" : "single"}",
                        args: [amount.toString()],
                      ),
                      onSubmit: () {
                        actorBloc.add(ListDiaryActorEvent.delete(
                            entryList:
                                selectionEntries.selectedEntries().toDiaryEntryList()));
                      },
                    ));
          },
        ),
        if (!areAllSelected)
          PopupMenuButton(
            onSelected: (selected) {
              if (selected == "Select_all") {
                context.read<ListDiaryBloc>().add(const ListDiaryEvent.selectAll());
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "Select_all",
                  child: Text(
                    AppLocalization.of(context).translate("select_all"),
                  ),
                )
              ];
            },
          ),
      ],
    );
  }
}
