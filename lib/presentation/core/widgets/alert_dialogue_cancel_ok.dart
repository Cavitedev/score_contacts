import 'package:flutter/material.dart';
import 'package:scorecontacts/core/app_localization.dart';

import 'outlined_input_field.dart';

class AlertDialogueWithFieldCancelOK extends StatefulWidget {
  final String title;
  final String hintText;
  final Function onCancel;
  final Function(String) onSubmit;

  const AlertDialogueWithFieldCancelOK({
    Key? key,
    required this.onCancel,
    required this.title,
    required this.hintText,
    required this.onSubmit,
  }) : super(key: key);

  @override
  _AlertDialogueWithFieldCancelOKState createState() =>
      _AlertDialogueWithFieldCancelOKState();
}

class _AlertDialogueWithFieldCancelOKState
    extends State<AlertDialogueWithFieldCancelOK> {
  String? text;

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
          return "";
        },
      ),
      contentPadding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            widget.onCancel();
            Navigator.of(context).pop();
          },
          child: Text(
            AppLocalization.of(context).translate("cancel"),
            // style: TextStyle(
            //     ),
          ),
        ),
        TextButton(
          onPressed: text != null && text!.isNotEmpty
              ? () {
                  widget.onSubmit(text!);
                  Navigator.of(context).pop();
                }
              : null,
          child: Text(AppLocalization.of(context).translate("ok")),
        )
      ],
    );
  }
}

class AlertDialogueCancelOK extends StatelessWidget {
  const AlertDialogueCancelOK({
    Key? key,
    required this.title,
    this.onSubmit,
    this.onCancel,
  }) : super(key: key);

  final String title;
  final Function? onSubmit;
  final Function? onCancel;

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
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onCancel?.call();
          },
          child: Text(
            AppLocalization.of(context).translate("cancel"),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onSubmit?.call();
          },
          child: Text(AppLocalization.of(context).translate("ok")),
        )
      ],
    );
  }
}
