import 'package:flutter/material.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/diary_date_time_picker.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/mention_text_field.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/select_mention_widget.dart';

class AddDiaryForm extends StatefulWidget {
  const AddDiaryForm({Key? key}) : super(key: key);

  @override
  _AddDiaryFormState createState() => _AddDiaryFormState();
}

class _AddDiaryFormState extends State<AddDiaryForm> {
  final GlobalKey _key = GlobalKey();
  double? _pos;

  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          controller: scrollController,
          children: [
            const SizedBox(height: 12),
            const Padding(
              padding: Constants.horizontalNormalPadding,
              child: MentionTextField(),
            ),
            const DiaryDateTimePicker(),
            EmptySpaceForScrolling(),
          ],
        ),
        SelectMentionWidget(
          scrollController: scrollController,
        ),
      ],
    );
  }
}
