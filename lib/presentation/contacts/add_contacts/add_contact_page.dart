import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact_scaffold.dart';
import 'package:scorecontacts/presentation/core/widgets/overlayed_circular_progess_indicator.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class AddContactPage extends StatelessWidget {
  final Contact? contact;
  final bool isEdditing;

  const AddContactPage({
    Key? key,
    this.contact,
    this.isEdditing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          final AddContactBloc bloc = getIt<AddContactBloc>()
            ..add(AddContactEvent.initialize(
                optionOf(contact), context.read<AppManagerCubit>().state.region, isEdditing));
          return bloc;
        },
        child: BlocListener<AddContactBloc, AddContactState>(
            listenWhen: (previous, current) => previous.savingOrFailureOption != current.savingOrFailureOption,
            listener: (context, state) {
              state.savingOrFailureOption.fold(
                  () {},
                  (either) => either.fold(
                        (failure) => FlushbarHelper.createError(
                          duration: const Duration(seconds: 6),
                          message: getContactsFailureMessage(context, failure),
                        ).show(context),
                        (_) {
                          context.router.popUntil((route) => route.settings.name == r.ContactListRoute.name);
                        },
                      ));
            },
            child: Stack(children: [AddContactScaffold(), const SavingProgressOverlay()])));
  }
}

class SavingProgressOverlay extends StatelessWidget {
  const SavingProgressOverlay();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddContactBloc, AddContactState>(
      buildWhen: (previous, current) => previous.isSaving != current.isSaving,
      builder: (context, state) {
        return OverlayedCircularProgressIndicator(
          isSaving: state.isSaving,
          msg: AppLocalization.of(context).translate("saving"),
        );
      },
    );
  }
}
