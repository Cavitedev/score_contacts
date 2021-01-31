import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/core/app_localization.dart';

part 'contacts_failure.freezed.dart';

@freezed
abstract class ContactsFailure with _$ContactsFailure {
  const factory ContactsFailure.insufficientPermissions() =
      _InsufficientPermissions;

  const factory ContactsFailure.notFound() = _NotFound;

  const factory ContactsFailure.unexpected() = _Unexpected;

  const factory ContactsFailure.platformError() = _PlatformError;

  const factory ContactsFailure.deniedContactPermissions() = _NotContactPermissions;
  
  const factory ContactsFailure.deniedPermanentlyContactPermissions() = _DeniedPermanentlyContactPermissions;

}

String getContactsFailureMessage(BuildContext context, ContactsFailure failure) {
  return AppLocalization.of(context).translate(failure.map(
    insufficientPermissions: (_) =>
    "insufficient_permissions",
    notFound: (_) =>
    "contact_not_found",
    unexpected: (_) =>
    "unexpected_error",
    deniedContactPermissions: (_) =>
    "denied_read_contacts_permissions_failure",
    deniedPermanentlyContactPermissions: (_) =>
    "denied_permanently_read_contacts_permissions_failure",
    platformError: (_) =>
    "platform_error",
  ));
}

