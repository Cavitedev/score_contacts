  import 'package:flutter/material.dart';

///Returns an iterable of [InlineSpan] with the text in bold where needed
Iterable<InlineSpan> spansWithBoldIfInMatches({
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
