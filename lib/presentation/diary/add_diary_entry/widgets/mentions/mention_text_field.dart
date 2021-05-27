import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/mention_input_formatter.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/mention_text_controller.dart';

class MentionTextField extends StatefulWidget {
  const MentionTextField({Key? key}) : super(key: key);

  @override
  _MentionTextFieldState createState() => _MentionTextFieldState();
}

class _MentionTextFieldState extends State<MentionTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = MentionTextController({"@a": const TextStyle(color: Colors.pink)});
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddDiaryEntryBloc, AddDiaryEntryState>(
      listener: (context, state) {

        controller.value = TextEditingValue(
          text: state.entry.text,
          selection: TextSelection(
              baseOffset:
                  state.entry.baseOffset ?? controller.selection.baseOffset,
              extentOffset: state.entry.extentOffset ??
                  controller.selection.extentOffset),
        );
      },
      child: TextField(
        controller: controller,
        inputFormatters: [MentionInputFormatter(mentions: {"@abc" : Mention(
          id: "123",
          name: "@a"
        )})],
        onChanged: (str) {
          context
              .read<AddDiaryEntryBloc>()
              .add(AddDiaryEntryEvent.onEntryTextChanged(
                text: str,
                baseOffset: controller.selection.baseOffset,
                extentOffset: controller.selection.extentOffset,
              ));
        },
        minLines: 5,
        maxLines: null,
        scrollPhysics: const BouncingScrollPhysics(),
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).textSelectionTheme.selectionColor,
          contentPadding: const EdgeInsets.only(top: 8, bottom: 8, left: 9),
          focusedBorder: OutlineInputBorder(
              borderRadius: Constants.textFieldBorderRadious,
              borderSide: BorderSide(
                  color: Theme.of(context).highlightColor, width: 2)),
          border: const OutlineInputBorder(
            borderRadius: Constants.textFieldBorderRadious,
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
