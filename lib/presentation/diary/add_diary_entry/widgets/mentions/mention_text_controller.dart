import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MentionTextController extends TextEditingController {
  Map<String, TextStyle> _mapMention;

  set mapMention(Map<String, TextStyle> mapMention) {
    _mapMention = mapMention;
    _pattern = _mapMention.keys.isNotEmpty
        ? "(${_mapMention.keys.map((key) => RegExp.escape(key)).join('|')})"
        : null;
  }

  String? _pattern;

  MentionTextController(this._mapMention)
      : _pattern = _mapMention.keys.isNotEmpty
            ? "(${_mapMention.keys.map((key) => RegExp.escape(key)).join('|')})"
            : null;

  @override
  TextSpan buildTextSpan(
      {required BuildContext context,
      TextStyle? style,
      required bool withComposing}) {
    if (_pattern == null || _pattern == '()') {
      return TextSpan(text: text, style: style);
    }
    List<InlineSpan> children = [];
    text.splitMapJoin(RegExp(_pattern!), onMatch: (Match match) {
      final mention = _mapMention[match[0]!]!;

      // selection = selection.copyWith(
      //   baseOffset: selection.baseOffset + overflow,
      //   extentOffset: selection.extentOffset + overflow);

      children.add(
        TextSpan(
          text: match[0]!,
          style: style!.merge(mention),
        ),
      );

      return "";
    }, onNonMatch: (String text) {
      children.add(TextSpan(text: text, style: style));
      return '';
    });

    return TextSpan(children: children, style: style);
  }
}
