import 'package:flutter/material.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/diary_date_time_picker.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/mention_text_field.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/select_mention_widget.dart';

class AddDiaryForm extends StatelessWidget {
  const AddDiaryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Stack(
      fit: StackFit.expand,
      children: [
        ListView(
          children: const [
            SizedBox(height: 12),
            Padding(
              padding: Constants.horizontalNormalPadding,
              child: MentionTextField(),
            ),
            DiaryDateTimePicker()
          ],
        ),
        const Positioned(
          bottom: 20,
          left: 12,
          right: 12,
          child: SelectMentionWidget(),
        )
      ],
    ));
  }
}
