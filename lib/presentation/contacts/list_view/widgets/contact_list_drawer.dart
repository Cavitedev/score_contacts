import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class ContactListDrawer extends StatelessWidget {
  const ContactListDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              AppLocalization.of(context).translate("contacts"),
              style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              AppLocalization.of(context)
                  .translate("entries"),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            leading: const Icon(Icons.note_alt),
            onTap: () {
              Navigator.pop(context);
              context.router.push(r.ListDiaryEntryPageRoute());
            },
          ),
          if (defaultTargetPlatform == TargetPlatform.android)
          ListTile(
            title: Text(
              AppLocalization.of(context)
                  .translate("load_contacts_from_device"),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            leading: const Icon(Icons.phone_android),
            onTap: () {
              Navigator.pop(context);
              context
                  .read<ContactActorBloc>()
                  .add(const ContactActorEvent.loadContactsFromSystem());
            },
          ),
          ListTile(
            title: Text(
              AppLocalization.of(context).translate("sign_out"),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            leading: const Icon(Icons.logout),
            onTap: () {
              context.read<AuthBloc>().add(const AuthEvent.signOut());
            },
          ),
          ListTile(
            title: Text(
              AppLocalization.of(context).translate("settings"),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            leading: const Icon(Icons.settings),
            onTap: () {
              context.router.push(const r.SettingsPageRoute());
            },
          ),
        ],
      ),
    );
  }
}
