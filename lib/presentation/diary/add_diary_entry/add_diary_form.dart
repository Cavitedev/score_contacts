import 'package:flutter/material.dart';
import 'package:scorecontacts/core/app_constants.dart';
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
        Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
             Padding(
              padding:  Constants.horizontalNormalPadding,
              child: MentionTextField(),
            ),
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
