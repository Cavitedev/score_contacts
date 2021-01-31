import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';

class ChangeThemeDialog extends StatelessWidget {
  final ThemeMode themeMode;

  const ChangeThemeDialog({@required this.themeMode});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Choose Theme"),
      elevation: 16,
      contentPadding: const EdgeInsets.only(right: 24, top: 24),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      content: RadioButtonColumn(
        group: themeMode,
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).focusColor,
          child: const Text(
            "Cancel",
          ),
        ),
      ],
    );
  }
}

class RadioButtonColumn extends StatelessWidget {
  final ThemeMode group;

  const RadioButtonColumn({
    Key key,
    this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ThemeRadioListTile(
            group: group, themeMode: ThemeMode.dark, msg: "Dark Theme"),
        ThemeRadioListTile(
            group: group, themeMode: ThemeMode.light, msg: "Light Theme"),
        ThemeRadioListTile(
            group: group, themeMode: ThemeMode.system, msg: "System Theme"),
      ],
    );
  }
}

class ThemeRadioListTile extends StatelessWidget {
  final ThemeMode group;
  final String msg;
  final ThemeMode themeMode;

  const ThemeRadioListTile({
    Key key,
    @required this.group,
    @required this.msg,
    @required this.themeMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
        context.read<AppManagerCubit>().changeThemeData(themeMode);
      },
      child: ListTile(
        leading: Radio(
          value: themeMode,
          onChanged: (_) {},
          groupValue: group,
        ),
        title: Text(msg),
      ),
    );
  }
}
