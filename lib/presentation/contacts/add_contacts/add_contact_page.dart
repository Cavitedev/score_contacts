import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact_form.dart';

class AddContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final AddContactBloc bloc = getIt<AddContactBloc>();
        return bloc;
      },
      child: AddContactForm(),
    );
  }
}
