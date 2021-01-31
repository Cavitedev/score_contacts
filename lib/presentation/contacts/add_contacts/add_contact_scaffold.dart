import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact_form.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class AddContactScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: BlocBuilder<AddContactBloc, AddContactState>(
            buildWhen: (previous, current) =>
                previous.isEditting != current.isEditting,
            builder: (context, state) => Text(
              AppLocalization.of(context).translate(
                  state.isEditting ? "edit_contact" : "create_contact"),
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.of(context)
                .popUntil((route) => route.settings.name == Routes.contactList);
          },
          icon: const Icon(Icons.close),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context.read<AddContactBloc>().add(AddContactEvent.saved(
                  context.read<AppManagerCubit>().state.region));
            },
          )
        ],
      ),
      body: const AddContactForm(),
    );
  }
}
