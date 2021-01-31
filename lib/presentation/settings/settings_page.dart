import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeMode themeMode = context.read<AppManagerCubit>().state.themeMode;
    String msg = "No theme";
    if(themeMode == ThemeMode.system){
      msg = "System";
    }else if (themeMode == ThemeMode.dark){
      msg = "dark";
    }else if (themeMode == ThemeMode.light){
      msg = "light";
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
            title: const Text("Theme"),
            subtitle: Text(msg),
            onTap: (){


            },
          )

        ],
      ),
    );
  }
}
