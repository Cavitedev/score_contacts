import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact_form.dart';

class AddContactScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddContactBloc, AddContactState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Create Contact",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close),
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {
                //TODO save contact to database
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.check),
              ),
            )
          ],
        ),
        body: AddContactForm(
          state: state,
        ),
      ),
    );
  }
}
