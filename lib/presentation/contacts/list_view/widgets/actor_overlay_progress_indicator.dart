import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_loading.dart';
import 'package:scorecontacts/presentation/core/widgets/overlayed_circular_progess_indicator.dart';

class ActorOverlayProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactActorBloc, ContactActorState>(
      buildWhen: (previous, current) => _getLoading(previous) != _getLoading(current),
      builder: (context, state) {
        final ContactsLoading loading = _getLoading(state);
        final bool isLoading = loading != null;
        final String msg = isLoading
            ? loading.map(
                loadingContacts: (l) => l.amount == null
                    ? AppLocalization.of(context).translate("loading_contacts_all")
                    : AppLocalization.of(context).translate("loading_contacts_specific", args: [l.amount.toString()]),
                deletingContacts: (l) =>
                    AppLocalization.of(context).translate("deleting_contacts", args: [l.amount.toString()]),
              )
            : "";
        return OverlayedCircularProgressIndicator(
          isSaving: isLoading,
          msg: msg,
        );
      },
    );
  }

  ContactsLoading _getLoading(ContactActorState current) =>
      current.maybeWhen(actionInProgress: (loading) => loading, orElse: () => null);
}
