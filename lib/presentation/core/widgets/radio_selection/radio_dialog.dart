import 'package:flutter/material.dart';
import 'package:scorecontacts/core/app_localization.dart';

class RadioDialog extends StatelessWidget {
  final Widget content;
  final String title;

  const RadioDialog({
    Key key,
    @required this.content,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      elevation: 16,
      contentPadding: const EdgeInsets.only(right: 24, top: 24),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      content: content,
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).focusColor,
          child: Text(
            AppLocalization.of(context).translate("cancel"),
          ),
        ),
      ],
    );
  }
}