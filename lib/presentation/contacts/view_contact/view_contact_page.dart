import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/view_contact/view_contact_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/domain/call/call_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/presentation/contacts/view_contact/view_contact_scaffold.dart';
import 'package:scorecontacts/presentation/contacts/view_contact/widgets/view_overlay_progress_indicator.dart';

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
                countryCode: context.read<AppManagerCubit>().state.region));
          return bloc;
        },
        child: BlocConsumer<ViewContactBloc, ViewContactState>(
          listenWhen: (p, n) => p.unionState != n.unionState,
          listener: (context, state) {
            state.unionState.map(
              initial: (_) {},
              actionInProgress: (_) {},
              callSuccesful: (state) => FlushbarHelper.createSuccess(
                duration: const Duration(seconds: 4),
                message: AppLocalization.of(context).translate(
                  "success_call",
                  args: [state.number],
                ),
              ).show(context),
              callFailure: (state) => FlushbarHelper.createError(
                duration: const Duration(seconds: 12),
                message: getCallFailureMessage(context, state.failure),
              ).show(context),
            messageFailure: (f) => FlushbarHelper.createError(
               duration: const Duration(seconds: 12),
                message: AppLocalization.of(context).translate("error_message", args: [f.number]),
            ).show(context),
            
            );
          },
          builder: (BuildContext context, state) {
            return Stack(
              children: [
                ViewContactScaffold(contact: state.contact),
                ViewOverlayProgressIndicator(),
              ],
            );
          },
        ));
  }
}
