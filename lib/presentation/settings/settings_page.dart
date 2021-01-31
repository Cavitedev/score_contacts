import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/presentation/settings/change_language_widget.dart';
import 'package:scorecontacts/presentation/settings/change_theme_widget.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: ListView(
        children: [
          ChangeThemeListTile(
            themeMode: context.read<AppManagerCubit>().state.themeMode,
          ),
          ChangeLanguageListTile(
            languageCode: context.read<AppManagerCubit>().state.languageCode,
          ),
        ],
      ),
    );
  }
}
