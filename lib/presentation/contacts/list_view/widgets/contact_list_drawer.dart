import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/presentation/core/widgets/theme_switch.dart';

class Contact_list_drawer extends StatelessWidget {
  const Contact_list_drawer({
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
        ThemeSwitch()



        ],
      ),
    );
  }
}

