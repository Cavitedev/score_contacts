import 'package:flutter/material.dart';

import 'outlined_input_field.dart';

class AlertDialogueCancelOK extends StatefulWidget {
  final String title;
  final String hintText;
  final Function onCancel;

  const AlertDialogueCancelOK({
    Key key,
    @required this.onCancel,
    @required this.title,
    @required this.hintText,
  }) : super(key: key);

  @override
  _AlertDialogueCancelOKState createState() => _AlertDialogueCancelOKState();
}

class _AlertDialogueCancelOKState extends State<AlertDialogueCancelOK> {
  bool hasText = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      elevation: 16,
      content: OutlinedInputField(
        hintText: widget.hintText,
        onChangedValidator: (value) {
          setState(() {
            hasText = value.isNotEmpty;
          });
          return null;
        },
      ),
      contentPadding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            widget.onCancel();
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).focusColor,
          child: const Text(
            "Cancel",
            style: TextStyle(
//              color: ,
//              fontSize: 20,
                ),
          ),
        ),
        FlatButton(
          onPressed: hasText
              ? () {
            Navigator.of(context).pop();
          }
              : null,
          disabledTextColor: Theme
              .of(context)
              .disabledColor,
          textColor: Theme
              .of(context)
              .focusColor,
          child: const Text("OK"),
        )
      ],
    );
  }
}
