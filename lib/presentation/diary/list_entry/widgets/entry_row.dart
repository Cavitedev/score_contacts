import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/list_diary_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/selection_entry.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/domain/core/filter.dart';
import 'package:scorecontacts/domain/mention/mention.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
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
                : Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: RichText(

          textScaleFactor: MediaQuery.of(context).textScaleFactor,
          text: TextSpan(children: _textSpans(selectionEntry.entry).toList()),
          maxLines: containerHeight / 20 ~/ MediaQuery.of(context).textScaleFactor,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Iterable<InlineSpan> _textSpans(DiaryEntry entry) sync* {
    final List<Match> matches = filter.filterSearch != ""
        ? filter.filterSearch
                ?.toLowerCase()
                .allMatches(entry.text.toLowerCase())
                .toList() ??
            const []
        : [];

    final List<Mention> mentionList = entry.mentionList;
    if (mentionList.isEmpty) {
      yield* _spanWithBoldIfInMatches(
        matches: matches,
        completeText: entry.text,
        textStyle: const TextStyle(),
        startPos: 0,
        endPos: entry.text.length,
      );
      return;
    }
    int currentPos = 0;
    for (final Mention mention in mentionList) {
      if (mention.startPos != currentPos) {
        yield* _spanWithBoldIfInMatches(
          matches: matches,
          completeText: entry.text,
          textStyle: const TextStyle(),
          startPos: currentPos,
          endPos: mention.startPos,
        );
      }
      yield* _spanWithBoldIfInMatches(
        matches: matches,
        completeText: entry.text,
        textStyle: Constants.mentionSelectionStyle,
        startPos: mention.startPos,
        endPos: mention.endPos,
      );
      currentPos = mention.endPos;
    }

    if (mentionList.last.endPos != entry.text.length) {
      yield* _spanWithBoldIfInMatches(
        matches: matches,
        completeText: entry.text,
        textStyle: Constants.mentionSelectionStyle,
        startPos: mentionList.last.endPos,
        endPos: entry.text.length,
      );
    }
  }

  Iterable<InlineSpan> _spanWithBoldIfInMatches({
    required String completeText,
    required TextStyle textStyle,
    required List<Match> matches,
    required int startPos,
    required int endPos,
  }) sync* {
    final matchesInSpan =
        matches.where((match) => match.start < endPos && match.end > startPos).toList();
    if (matchesInSpan.isEmpty) {
      yield TextSpan(text: completeText.substring(startPos, endPos), style: textStyle);
      return;
    }

    int currentPos = startPos;

    for (final Match match in matchesInSpan) {
      if (match.start != currentPos) {
        yield TextSpan(
            text: completeText.substring(currentPos, match.start), style: textStyle);
      }
      yield TextSpan(
          text: completeText.substring(match.start, match.end),
          style: textStyle.copyWith(fontWeight: FontWeight.bold));
      currentPos = match.end;
    }

    if (matchesInSpan.last.end != endPos) {
      yield TextSpan(text: completeText.substring(currentPos, endPos), style: textStyle);
    }
  }
}
