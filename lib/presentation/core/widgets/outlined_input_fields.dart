import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

class OutlinedInputFieldsGroup extends StatelessWidget {
  final List<OutlinedInputField> inputFields;

  const OutlinedInputFieldsGroup({
    Key? key,
    required this.inputFields,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: inputFields,
    );
  }
}
