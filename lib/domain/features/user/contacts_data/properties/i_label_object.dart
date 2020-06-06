import 'package:flutter/foundation.dart';

abstract class ILabelObject<T> {
  final T value;
  final String label;
  final List<String> otherLabels;

  ILabelObject({
    @required this.value,
    @required this.label,
    @required this.otherLabels,
  });
}
