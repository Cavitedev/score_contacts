import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/view_contact/view_contact_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_loading.dart';
import 'package:scorecontacts/presentation/core/widgets/overlayed_circular_progess_indicator.dart';

class ViewOverlayProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewContactBloc, ViewContactState>(
      buildWhen: (previous, current) =>
          _getLoading(previous) != _getLoading(current),
      builder: (context, state) {
        final ContactsLoading? loading = _getLoading(state);
        final bool isLoading = loading != null;
        final String msg = isLoading
            ? loading.map(
                loadingContacts: (l) => l.amount == null
                    ? AppLocalization.of(context)
                        .translate("loading_contacts_all")
                    : AppLocalization.of(context).translate(
                        "loading_contacts_specific",
                        args: [l.amount.toString()]),
                deletingContacts: (l) => AppLocalization.of(context).translate(
                    "deleting_contacts",
                    args: [l.amount.toString()]),
                callingNumber: (l) => AppLocalization.of(context)
                    .translate("calling", args: [l.number]),
              )
            : "";
        return OverlayedCircularProgressIndicator(
          isSaving: isLoading,
          msg: msg,
        );
      },
    );
  }

  ContactsLoading? _getLoading(ViewContactState current) => current.unionState
      .maybeWhen(actionInProgress: (loading) => loading, orElse: () => null);
}
