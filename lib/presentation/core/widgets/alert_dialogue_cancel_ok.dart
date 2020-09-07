import 'package:flutter/material.dart';

import 'outlined_input_field.dart';

class AlertDialogueWithFieldCancelOK extends StatefulWidget {
  final String title;
  final String hintText;
  final Function onCancel;
  final Function(String) onSubmit;

  const AlertDialogueWithFieldCancelOK({
    Key key,
    @required this.onCancel,
    @required this.title,
    @required this.hintText,
    @required this.onSubmit,
  }) : super(key: key);

  @override
  _AlertDialogueWithFieldCancelOKState createState() =>
      _AlertDialogueWithFieldCancelOKState();
}

class _AlertDialogueWithFieldCancelOKState
    extends State<AlertDialogueWithFieldCancelOK> {
  String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      elevation: 16,
      content: OutlinedInputField(
        hintText: widget.hintText,
        onChangedValidator: (value) {
          setState(() {
            text = value;
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
          onPressed: text != null && text.isNotEmpty
              ? () {
                  widget.onSubmit(text);
                  Navigator.of(context).pop();
                }
              : null,
          disabledTextColor: Theme.of(context).disabledColor,
          textColor: Theme.of(context).focusColor,
          child: const Text("OK"),
        )
      ],
    );
  }
}

class AlertDialogueCancelOK extends StatelessWidget {
  const AlertDialogueCancelOK({
    Key key,
    @required this.title,
    this.onSubmit,
    this.onCancel,
  }) : super(key: key);

  final String title;
  final Function onSubmit;
  final Function onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      elevation: 16,
      contentPadding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
            onCancel?.call();
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
          onPressed: () {
            Navigator.of(context).pop();
            onSubmit?.call();
          },
          disabledTextColor: Theme.of(context).disabledColor,
          textColor: Theme.of(context).focusColor,
          child: const Text("OK"),
        )
      ],
    );
  }
}