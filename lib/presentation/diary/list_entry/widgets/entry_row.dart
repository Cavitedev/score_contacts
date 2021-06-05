import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/application/diary/list_diary/list_diary_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/selection_entry.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class EntryRow extends StatelessWidget {
  final SelectionEntry selectionEntry;
  final bool selectionEnabled;

  const EntryRow({
    required this.selectionEntry,
    required this.selectionEnabled,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (selectionEnabled) {
          context
              .read<ListDiaryBloc>()
              .add(ListDiaryEvent.toggleSelection(selectionEntry));
          return;
        }

        context.read<ContactWatcherBloc>().state.maybeMap(
              loadSuccess: (state) {
                context.router.push(r.AddDiaryPageRoute(
                    mentionableList: state.stateValues.selectionContactList.toContacts(),
                    diaryEntry: selectionEntry.entry));
              },
              orElse: () {},
            );
      },
      onLongPress: () {
        context.read<ListDiaryBloc>().add(ListDiaryEvent.toggleSelection(selectionEntry));
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(
            bottom: 8, left: Constants.normalPadding, right: Constants.normalPadding),
        padding: Constants.bigPaddingList,
        decoration: BoxDecoration(
            color: selectionEntry.isSelected
                ? Theme.of(context).focusColor
                : Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: RichText(
          textScaleFactor: MediaQuery.of(context).textScaleFactor,
          text: TextSpan(children: _textSpans(selectionEntry.entry).toList()),
        ),
      ),
    );
  }

  Iterable<InlineSpan> _textSpans(DiaryEntry entry) sync* {
    final List<Mention> mentionList = entry.mentionList;
    if (mentionList.isEmpty) {
      yield TextSpan(text: entry.text);
      return;
    }
    int currentPos = 0;
    for (final Mention mention in mentionList) {
      if (mention.startPos != currentPos) {
        yield TextSpan(text: entry.text.substring(currentPos, mention.startPos));
      }
      yield TextSpan(
          text: entry.text.substring(mention.startPos, mention.endPos),
          style: Constants.mentionSelectionStyle);
      currentPos = mention.endPos;
    }

    if (mentionList.last.endPos != entry.text.length) {
      yield TextSpan(text: entry.text.substring(mentionList.last.endPos));
    }
  }
}
