import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/list_diary_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/selection_entry.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/domain/core/filter.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/presentation/core/bold_text.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class EntryRow extends StatelessWidget {
  final SelectionEntry selectionEntry;
  final bool selectionEnabled;
  final Filter filter;

  static const double containerHeight = 100;

  const EntryRow({
    required this.selectionEntry,
    required this.selectionEnabled,
    required this.filter,
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

        context.router.push(r.AddDiaryPageRoute(diaryEntry: selectionEntry.entry));
      },
      onLongPress: () {
        context.read<ListDiaryBloc>().add(ListDiaryEvent.toggleSelection(selectionEntry));
      },
      child: Container(
        height: containerHeight,
        margin:
            const EdgeInsets.symmetric(vertical: 4, horizontal: Constants.normalPadding),
        padding: Constants.bigPaddingList,
        decoration: BoxDecoration(
            color: selectionEntry.isSelected
                ? Theme.of(context).focusColor
                : Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(8)),
        child: RichText(
          textScaleFactor: MediaQuery.of(context).textScaleFactor,
          text: TextSpan(
              children: _textSpans(
                      selectionEntry.entry,
                      Theme.of(context).textTheme.bodyText2,
                      Theme.of(context).accentTextTheme.bodyText2 ??
                          Constants.mentionSelectionStyle)
                  .toList()),
          maxLines: containerHeight / 20 ~/ MediaQuery.of(context).textScaleFactor,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Iterable<InlineSpan> _textSpans(
      DiaryEntry entry, TextStyle? defaultTextStyle, TextStyle accentTextStyle) sync* {
    final TextStyle actualDefaultTextStyle = defaultTextStyle ?? const TextStyle();

    final List<Match> matches = filter.filterSearch != ""
        ? filter.filterSearch
                ?.toLowerCase()
                .allMatches(entry.text.toLowerCase())
                .toList() ??
            const []
        : [];

    final List<Mention> mentionList = entry.mentionList;
    if (mentionList.isEmpty) {
      yield* spansWithBoldIfInMatches(
        matches: matches,
        completeText: entry.text,
        textStyle: actualDefaultTextStyle,
        startPos: 0,
        endPos: entry.text.length,
      );
      return;
    }
    int currentPos = 0;
    for (final Mention mention in mentionList) {
      if (mention.startPos != currentPos) {
        yield* spansWithBoldIfInMatches(
          matches: matches,
          completeText: entry.text,
          textStyle: actualDefaultTextStyle,
          startPos: currentPos,
          endPos: mention.startPos,
        );
      }
      yield* spansWithBoldIfInMatches(
        matches: matches,
        completeText: entry.text,
        textStyle: accentTextStyle,
        startPos: mention.startPos,
        endPos: mention.endPos,
      );
      currentPos = mention.endPos;
    }

    if (mentionList.last.endPos != entry.text.length) {
      yield* spansWithBoldIfInMatches(
        matches: matches,
        completeText: entry.text,
        textStyle: actualDefaultTextStyle,
        startPos: mentionList.last.endPos,
        endPos: entry.text.length,
      );
    }
  }

}
