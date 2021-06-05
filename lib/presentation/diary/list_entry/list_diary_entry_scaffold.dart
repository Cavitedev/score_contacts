import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/list_diary_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_container.dart';
import 'package:scorecontacts/presentation/diary/list_entry/widgets/entry_row.dart';
import 'package:scorecontacts/presentation/diary/list_entry/widgets/selected_entries_row_bar.dart';

class ListDiaryEntryScaffold extends StatelessWidget {
  final SuccessListDiary successValues;

  const ListDiaryEntryScaffold(this.successValues);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (successValues.hasSelectedEntries())
              SelectedEntriesRowBar(
                selectionEntries: successValues.selectionEntryList,
                areAllSelected: successValues.areAllEntriesSelected(),
              ),
            TextFieldContainer(
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        context.router.pop();
                      },
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "🔎 ${AppLocalization.of(context).translate(
                            "search_entries",
                            args: [successValues.displayedEntries().length.toString()]
                          )}",
                          border: InputBorder.none),
                      onChanged: (str) {
                          context.read<ListDiaryBloc>().add(ListDiaryEvent.search(str));
                        },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: successValues.displayedEntries().length,
                  itemBuilder: (context, index) {
                    return EntryRow(
                      selectionEntry: successValues.displayedEntries()[index],
                      selectionEnabled: successValues.hasSelectedEntries(),
                      filter: successValues.filter,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
