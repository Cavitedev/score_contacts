import 'package:flutter/material.dart';

class AddDiaryForm extends StatelessWidget {
  const AddDiaryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLines: null,
      decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).textSelectionTheme.selectionColor,
            contentPadding: const EdgeInsets.only(top: 8, bottom: 8, left: 9),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(
                    color: Theme.of(context).highlightColor, width: 2)),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide.none,
            )),
    ),
        ));
  }
}
