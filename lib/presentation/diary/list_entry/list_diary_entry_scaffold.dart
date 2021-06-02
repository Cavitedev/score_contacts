import 'package:flutter/material.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_container.dart';

class ListDiaryEntryScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            )
          ],
        ),
      ),
    );
  }
}
