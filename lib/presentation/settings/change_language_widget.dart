import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/radio_selection/radio_dialog.dart';

class ChangeLanguageListTile extends StatelessWidget {
  final String languageCode;

  const ChangeLanguageListTile({
    Key key,
    @required this.languageCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 48),
      title: const Text("Language"),
      subtitle: Text(AppLocalization.of(context)
          .translate(languageCode == null ? "system" : "this_language")),
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => ChangeLanguageDialog(
            language: languageCode ?? "system",
          ),
        );
      },
    );
  }
}

class ChangeLanguageDialog extends StatelessWidget {
  final String language;

  const ChangeLanguageDialog({@required this.language});

  @override
  Widget build(BuildContext context) {
    return RadioDialog(
      title: "Choose Language",
      content: RadioLanguageColumn(group: language,),
    );
  }
}



class RadioLanguageColumn extends StatelessWidget {
  final String group;

  const RadioLanguageColumn({
    Key key,
    this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildRadioListTile(context: context, value: "en", msg: "English"),
        _buildRadioListTile(context: context, value: "es", msg: "Español"),
        _buildRadioListTile(context: context, value: "system", msg: "System"),
      ],
    );
  }

  RadioListTile<String> _buildRadioListTile({
    @required BuildContext context,
    @required String value,
    @required String msg,
  }) {
    return RadioListTile<String>(
      groupValue: group,
      value: value,
      title: Text(msg),
      onChanged: (_) {
        Navigator.pop(context);
        context.read<AppManagerCubit>().changeLanguage(context, value);
      },
    );
  }
}
