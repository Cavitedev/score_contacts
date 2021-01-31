import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';

class ChangeLanguageDialog extends StatelessWidget {
  final String language;

  const ChangeLanguageDialog({@required this.language});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Choose Language"),
      elevation: 16,
      contentPadding: const EdgeInsets.only(right: 24, top: 24),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      content: RadioLanguageColumn(
        group: language,
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
        LanguageRadioListTile(
            group: group, value: "en", msg: "English"),
        LanguageRadioListTile(
            group: group, value: "es", msg: "Español"),
        LanguageRadioListTile(
            group: group, value: "system", msg: "System"),
      ],
    );
  }
}

class LanguageRadioListTile extends StatelessWidget {
  final String group;
  final String msg;
  final String value;

  const LanguageRadioListTile({
    Key key,
    @required this.group,
    @required this.msg,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Navigator.of(context).pop();
        context.read<AppManagerCubit>().changeLanguage(context, value);
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
