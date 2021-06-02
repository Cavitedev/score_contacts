import 'package:flutter/cupertino.dart';

class Constants {
    static const double smallPadding = 8;
  static const double normalPadding = 12;
  static const double extendedPadding = 20;

  static const EdgeInsets horizontalNormalPadding =
      EdgeInsets.symmetric(horizontal: normalPadding);

  static const BorderRadius textFieldBorderRadious =
      BorderRadius.all(Radius.circular(12));

  static const TextStyle mentionSelectionStyle =
      TextStyle(color: Color.fromRGBO(204, 39, 219, 1.0));
}
