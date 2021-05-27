import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/mention_text_field.dart';

class AddDiaryForm extends StatelessWidget {
  const AddDiaryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MentionTextField(),
        ),
      ],
    ));
  }
}
