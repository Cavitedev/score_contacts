import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactListDrawer extends StatelessWidget {
  const ContactListDrawer({
    Key key,
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
            child: Text('Contacts', style: Theme.of(context).textTheme.headline3),
          ),
          ListTile(
            title: Text('Load Contacts from device', style: Theme.of(context).textTheme.subtitle2,),
            leading: const Icon(Icons.phone_android),
            onTap: () {
              Navigator.pop(context);
              context
                  .read<ContactActorBloc>()
                  .add(const ContactActorEvent.loadContactsFromSystem());
            },
          ),
          ListTile(
            title: Text('Sign Out', style: Theme.of(context).textTheme.subtitle2,),
            leading: const Icon(Icons.logout),
            onTap: () {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.signOut());
            },
          ),
          ListTile(
            title: Text('Settings', style: Theme.of(context).textTheme.subtitle2,),
            leading: const Icon(Icons.settings),
            onTap: () {
              ExtendedNavigator.of(context).pushSettingsPage();
            },
          ),

        ],
      ),
    );
  }
}

