import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
                      icon: const Icon(Icons.close),
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
                          )}",
                          border: InputBorder.none),
                      onChanged: (str) {
                        //TODO buscar en diario
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: successValues.selectionEntryList.length,
                  itemBuilder: (context, index) {
                    return EntryRow(
                      selectionEntry: successValues.selectionEntryList[index],
                      selectionEnabled: successValues.hasSelectedEntries(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
