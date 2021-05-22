import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/view_contact/view_contact_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/presentation/contacts/view_contact/view_contact_scaffold.dart';

class ViewContactPage extends StatelessWidget {
  final Contact contact;

  const ViewContactPage({required this.contact});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final ViewContactBloc bloc = getIt<ViewContactBloc>()
          ..add(ViewContactEvent.initialize(
              contact: contact,
              countryCode:  context.read<AppManagerCubit>().state.region));
        return bloc;
      },
      child: BlocBuilder<ViewContactBloc, ViewContactState>(
        builder: (BuildContext context, state) {
          return ViewContactScaffold(contact: state.contact);
        },
      )
    );
  }
}
