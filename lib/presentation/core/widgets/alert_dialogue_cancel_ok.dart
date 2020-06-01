import 'package:flutter/material.dart';

import 'outlined_input_field.dart';

class AlertDialogueCancelOK extends StatefulWidget {
  final String title;
  final String hintText;
  final Function onCancel;

  AlertDialogueCancelOK({
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
            hasText = value.length > 0;
          });
          return null;
        },
      ),
      contentPadding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            widget.onCancel();
            Navigator.of(context).pop();
          },
          child: Text(
            "Cancel",
            style: TextStyle(
//              color: ,
//              fontSize: 20,
                ),
          ),
          textColor: Theme.of(context).focusColor,
        ),
        FlatButton(
          onPressed: hasText
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
          child: Text("OK"),
          disabledTextColor: Theme.of(context).disabledColor,
          textColor: Theme.of(context).focusColor,
        )
      ],
    );
  }
}
