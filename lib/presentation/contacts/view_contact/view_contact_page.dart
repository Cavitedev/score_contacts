import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
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
  final Function onDelete;

  const ViewContactPage({required this.contact, required this.onDelete});

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
      child: BlocListener<ContactWatcherBloc, ContactWatcherState>(
        //Update contact when it is updated on database
        listener: (context, state) {
          final Contact? cont = state.maybeMap(loadSuccess: (successValues) {
            return successValues.stateValues.selectionContactList
                .firstWhere((c) => c.contact.id == contact.id)
                .contact;
          }, orElse: () {
            return null;
          });
          if (cont == null) {
            FlushbarHelper.createError(
              duration: const Duration(seconds: 12),
              message: "Error reloading contact",
            ).show(context);
          }

          context.read<ViewContactBloc>().add(ViewContactEvent.initialize(
                contact: cont!,
                countryCode: context.read<AppManagerCubit>().state.region,
              ));
        },
        child: BlocConsumer<ViewContactBloc, ViewContactState>(
          listenWhen: (p, n) => p.unionState != n.unionState,
          listener: (context, state) {
            state.unionState.map(
              initial: (_) {},
              actionInProgress: (_) {},
              callSuccessful: (state) => FlushbarHelper.createSuccess(
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
                message: AppLocalization.of(context)
                    .translate("error_message", args: [f.number]),
              ).show(context),
              mailFailure: (f) => FlushbarHelper.createError(
                duration: const Duration(seconds: 12),
                message:
                    AppLocalization.of(context).translate("error_email", args: [f.mail]),
              ).show(context),
              appMessageFailure: (f) => FlushbarHelper.createError(
                duration: const Duration(seconds: 12),
                message: AppLocalization.of(context).translate(
                  "error_app_message",
                  args: [f.appMessage.appNameWithoutDomain(), f.number],
                ),
              ).show(context),
            );
          },
          builder: (BuildContext context, state) {
            return Stack(
              children: [
                ViewContactScaffold(
                  contact: state.contact,
                  onDelete: onDelete,
                ),
                ViewOverlayProgressIndicator(),
              ],
            );
          },
        ),
      ),
    );
  }
}
