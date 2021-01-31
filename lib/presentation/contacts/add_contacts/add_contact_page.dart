import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact_scaffold.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class AddContactPage extends StatelessWidget {
  final Contact contact;
  final bool isEdditing;

  const AddContactPage({Key key, this.contact, this.isEdditing = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          final AddContactBloc bloc = getIt<AddContactBloc>()
            ..add(AddContactEvent.initialize(optionOf(contact),
                context.read<AppManagerCubit>().state.region, isEdditing));
          return bloc;
        },
        child: BlocListener<AddContactBloc, AddContactState>(
            listenWhen: (previous, current) =>
                previous.savingOrFailureOption != current.savingOrFailureOption,
            listener: (context, state) {
              state.savingOrFailureOption.fold(
                  () {},
                  (either) => either.fold(
                        (failure) => FlushbarHelper.createError(
                          duration: const Duration(seconds: 6),
                          message:
                              getContactsFailureMessage(context, failure),
                        ).show(context),
                        (_) {
                          ExtendedNavigator.of(context).popUntil((route) =>
                              route.settings.name == Routes.contactList);
                        },
                      ));
            },
            child: Stack(children: [
              AddContactScaffold(),
              const SavingProgressOverlay()
            ])));
  }

}

class SavingProgressOverlay extends StatelessWidget {
  const SavingProgressOverlay();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddContactBloc, AddContactState>(
      buildWhen: (previous, current) => previous.isSaving != current.isSaving,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: !state.isSaving,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            color: state.isSaving
                ? Colors.black.withOpacity(0.8)
                : Colors.transparent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: state.isSaving
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircularProgressIndicator(),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        AppLocalization.of(context).translate("saving"),
                        style: Theme.of(context).textTheme.headline5,
                      )
                    ],
                  )
                : null,
          ),
        );
      },
    );
  }
}
