import 'package:flutter/foundation.dart';

abstract class ILabelObject {
  final String value;
  final String label;
  final List<String> otherLabels;

  ILabelObject({
    @required this.value,
    @required this.label,
    @required this.otherLabels,
  });

  ILabelObject copyWith({
    String value,
    String label,
  });
}

