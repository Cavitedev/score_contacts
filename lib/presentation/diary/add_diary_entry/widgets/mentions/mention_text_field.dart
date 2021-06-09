import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/mention_input_formatter.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/widgets/mentions/mention_text_controller.dart';

class MentionTextField extends StatefulWidget {
  final String mentionTrigger;

  const MentionTextField({
    Key? key,
    this.mentionTrigger = "@",
  }) : super(key: key);

  @override
  _MentionTextFieldState createState() => _MentionTextFieldState();
}

class _MentionTextFieldState extends State<MentionTextField> {
  late MentionTextController controller;
  late MentionInputFormatter mentionInputFormatter;

  @override
  void initState() {
    controller = MentionTextController({});
    mentionInputFormatter = MentionInputFormatter(
      mentionList: [],
      addDiaryEntryBloc: context.read<AddDiaryEntryBloc>(),
    );
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
      listenWhen: (p, n) =>
          p.entryField.entry.mentionList != n.entryField.entry.mentionList,
      listener: (context, state) {
        mentionInputFormatter.mentionList = state.entryField.entry.mentionList;
        controller.mapMention = {
          for (var mention in state.entryField.entry.mentionList)
            "${widget.mentionTrigger}${mention.iMentionable.getName()}":
                Constants.mentionSelectionStyle
        };

        controller.value = TextEditingValue(
          text: state.entryField.entry.text,
          selection: TextSelection(
              baseOffset: state.entryField.baseOffset ?? controller.selection.baseOffset,
              extentOffset:
                  state.entryField.extentOffset ?? controller.selection.extentOffset),
        );
      },
      child: TextField(
        controller: controller,
        inputFormatters: [mentionInputFormatter],
        maxLengthEnforcement: MaxLengthEnforcement.none,
        onChanged: (str) {
          context.read<AddDiaryEntryBloc>().add(AddDiaryEntryEvent.onEntryTextChanged(
                text: str,
                trigger: widget.mentionTrigger,
                baseOffset: controller.selection.baseOffset,
                extentOffset: controller.selection.extentOffset,
              ));
          },
        minLines: 5,
        maxLines: null,
        scrollPhysics: const BouncingScrollPhysics(),
        decoration: InputDecoration(
          filled: true,
          contentPadding: const EdgeInsets.only(top: 8, bottom: 8, left: 9),
          focusedBorder: OutlineInputBorder(
              borderRadius: Constants.textFieldBorderRadious,
              borderSide: BorderSide(
                  color: Theme.of(context).textSelectionTheme.selectionHandleColor!,
                  width: 2)),
          border: const OutlineInputBorder(
            borderRadius: Constants.textFieldBorderRadious,
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
