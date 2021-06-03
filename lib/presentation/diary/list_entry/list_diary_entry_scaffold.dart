import 'package:flutter/material.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_container.dart';
import 'package:scorecontacts/presentation/diary/list_entry/widgets/entry_row.dart';

class ListDiaryEntryScaffold extends StatelessWidget {
  
  final List<DiaryEntry> entryList;


  const ListDiaryEntryScaffold(this.entryList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "🔎 ${AppLocalization.of(context).translate(
                      "search_entries", //TODO add translation
                    )}",
                    border: InputBorder.none),
                onChanged: (str) {
                  //TODO buscar en diario
                },
              ),
            ),
            
            ...entryList.map((entry) => EntryRow(entry: entry))
            
          ],
        ),
      ),
    );
  }
}
