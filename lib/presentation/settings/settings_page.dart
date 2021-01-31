import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/presentation/settings/change_theme_dialog.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeMode themeMode = context.read<AppManagerCubit>().state.themeMode;
    String msg = "No theme";
    if (themeMode == ThemeMode.system) {
      msg = "System";
    } else if (themeMode == ThemeMode.dark) {
      msg = "Dark";
    } else if (themeMode == ThemeMode.light) {
      msg = "Light";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 48),
            title: const Text("Theme"),
            subtitle: Text(msg),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => ChangeThemeDialog(themeMode: themeMode,),
              );
            },
          )
        ],
      ),
    );
  }
}
