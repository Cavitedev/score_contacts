import 'package:flutter/cupertino.dart';

class Constants {
    static const double smallPadding = 8;
  static const double normalPadding = 12;
  static const double extendedPadding = 20;

  static const EdgeInsets bigPaddingList = EdgeInsets.fromLTRB(20, 8, 4, 8);

  static const EdgeInsets horizontalNormalPadding =
      EdgeInsets.symmetric(horizontal: normalPadding);

  static const BorderRadius textFieldBorderRadious =
      BorderRadius.all(Radius.circular(12));

  static const TextStyle mentionSelectionStyle =
      TextStyle(color: Color.fromRGBO(104, 183, 255, 1.0));
}
