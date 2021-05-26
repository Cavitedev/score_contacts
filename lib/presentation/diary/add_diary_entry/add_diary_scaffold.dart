import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/add_diary_form.dart';

class AddDiaryScaffold extends StatelessWidget {
  const AddDiaryScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Entry"),
      ),
      body: const AddDiaryForm(),

    );
  }
}
