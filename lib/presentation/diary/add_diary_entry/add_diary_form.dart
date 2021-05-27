import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

class AddDiaryForm extends StatelessWidget {
  const AddDiaryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: OutlinedInputField(
            maxLines: null,

            keyboardType: TextInputType.multiline,
          ),
        ),
      ],
    ));
  }
}
