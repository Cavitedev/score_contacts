import 'package:flutter/material.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/theme_manager.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({
    Key key,
  }) : super(key: key);

  @override
  _ThemeSwitchState createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  bool isDarkTheme = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            'Dark Theme',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Switch(
            value: isDarkTheme,
            onChanged: (_) {},
          ),
        ],
      ),
      leading: const Icon(Icons.nights_stay),
      onTap: () {

          getIt<ThemeManager>().setCurrentTheme
            (isDarkTheme ? ThemeMode.dark : ThemeMode.light);

        setState(() {
          isDarkTheme = !isDarkTheme;
        });
      },
    );
  }
}
