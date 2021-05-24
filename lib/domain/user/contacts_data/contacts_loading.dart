import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/core/app_localization.dart';

part 'contacts_loading.freezed.dart';

@freezed
class ContactsLoading with _$ContactsLoading {
  const factory ContactsLoading.loadingContacts({int? amount}) =
      _LoadingContacts;

  const factory ContactsLoading.deletingContacts({required int amount}) =
      _DeletingContacts;

  const factory ContactsLoading.callingNumber({required String number}) =
      _CallingNumber;

  const factory ContactsLoading.sendingMessage({required String number}) =
      _SendingMessage;

  const factory ContactsLoading.sendingMail({required String mail}) =
      _SendingMail;
}

String getContactsLoadingMessage(
    BuildContext context, ContactsLoading loading) {
  return loading.map(
    loadingContacts: (l) => l.amount == null
        ? AppLocalization.of(context).translate("loading_contacts_all")
        : AppLocalization.of(context).translate("loading_contacts_specific",
            args: [l.amount.toString()]),
    deletingContacts: (l) => AppLocalization.of(context)
        .translate("deleting_contacts", args: [l.amount.toString()]),
    callingNumber: (l) =>
        AppLocalization.of(context).translate("calling", args: [l.number]),
    sendingMessage: (l) => AppLocalization.of(context).translate(
      "sending_message",
      args: [l.number],
    ),
    sendingMail: (l) => AppLocalization.of(context).translate(
      "sending_email",
      args: [l.mail],
    ),
  );
}
