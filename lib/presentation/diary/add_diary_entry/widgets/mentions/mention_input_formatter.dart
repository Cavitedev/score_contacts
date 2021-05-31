import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/domain/mention/mention.dart';

class MentionInputFormatter extends TextInputFormatter {
  late List<Mention> mentionList;
  final AddDiaryEntryBloc addDiaryEntryBloc;

  MentionInputFormatter({
    required this.mentionList,
    required this.addDiaryEntryBloc,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    for (final Mention mention in mentionList) {
      if (mention.isIndexInStartEndPos(newValue.selection.baseOffset)) {
        addDiaryEntryBloc.add(AddDiaryEntryEvent.removeMention(
          mention: mention,
          baseOffset: oldValue.selection.baseOffset,
          extentOffset: oldValue.selection.extentOffset,
        ));
        return const TextEditingValue();
      }
    }

    return newValue;
  }
}
