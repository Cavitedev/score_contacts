import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/radio_selection/radio_dialog.dart';

class ChangeThemeListTile extends StatelessWidget {
  final ThemeMode themeMode;

  const ChangeThemeListTile({
    Key? key,
    required this.themeMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String key;
    if (themeMode == ThemeMode.system) {
      key = "system";
    } else if (themeMode == ThemeMode.dark) {
      key = "dark";
    } else {
      key = "light";
    }

    return ListTile(
      contentPadding: const EdgeInsets.only(left: 48),
      title: Text(AppLocalization.of(context).translate("theme")),
      subtitle: Text(AppLocalization.of(context).translate(key)),
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

  const ChangeThemeDialog({required this.themeMode});

  @override
  Widget build(BuildContext context) {
    return RadioDialog(
      title: AppLocalization.of(context).translate("choose_theme"),
      content: RadioThemeColumn(
        group: themeMode,
      ),
    );
  }
}

class RadioThemeColumn extends StatelessWidget {
  final ThemeMode group;

  const RadioThemeColumn({
    required this.group,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildRadioListTile(
          context: context,
          value: ThemeMode.dark,
          msg: AppLocalization.of(context).translate("dark"),
        ),
        _buildRadioListTile(
          context: context,
          value: ThemeMode.light,
          msg: AppLocalization.of(context).translate("light"),
        ),
        _buildRadioListTile(
          context: context,
          value: ThemeMode.system,
          msg: AppLocalization.of(context).translate("system_default"),
        ),
      ],
    );
  }

  RadioListTile<ThemeMode> _buildRadioListTile({
    required BuildContext context,
    required ThemeMode value,
    required String msg,
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
