import 'package:flutter/material.dart';

class SimpleRadioListTile<T> extends StatelessWidget {
  @required final T group;
  @required final String msg;
  @required final T value;
  final Function onTap;

  const SimpleRadioListTile({
    Key key,
    this.group,
    this.msg,
    this.value,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
        onTap?.call();
      },
      child: ListTile(
        leading: Radio(
          value: value,
          onChanged: (_) {},
          groupValue: group,
        ),
        title: Text(msg),
      ),
    );
  }
}
