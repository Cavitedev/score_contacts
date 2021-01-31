import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_localization.dart';

class ChangeThemeListTile extends StatelessWidget {
  final ThemeMode themeMode;

  const ChangeThemeListTile({
    Key key,
    @required this.themeMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = "No theme";
    if (themeMode == ThemeMode.system) {
      msg = "System";
    } else if (themeMode == ThemeMode.dark) {
      msg = "Dark";
    } else if (themeMode == ThemeMode.light) {
      msg = "Light";
    }

    return ListTile(
      contentPadding: const EdgeInsets.only(left: 48),
      title: Text(AppLocalization.of(context).translate("theme")),
      subtitle: Text(msg),
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => ChangeThemeDialog(
            themeMode: themeMode,
          ),
        );
      },
    );
  }
}

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
      content: RadioThemeColumn(
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

class RadioThemeColumn extends StatelessWidget {
  final ThemeMode group;

  const RadioThemeColumn({
    Key key,
    this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildRadioListTile(context: context, value: ThemeMode.dark, msg: "Dark Theme"),
        _buildRadioListTile(context: context, value: ThemeMode.light, msg: "Light Theme"),
        _buildRadioListTile(context: context, value: ThemeMode.system, msg: "System Theme"),
      ],
    );
  }

  RadioListTile<ThemeMode> _buildRadioListTile({
    @required BuildContext context,
    @required ThemeMode value,
    @required String msg,
  }) {
    return RadioListTile<ThemeMode>(
      groupValue: group,
      value: value,
      title: Text(msg),
      onChanged: (_) {
        Navigator.pop(context);
        context.read<AppManagerCubit>().changeThemeData(value);
      },
    );
  }
}
