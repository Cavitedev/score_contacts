import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_failure.freezed.dart';

@freezed
abstract class ContactsFailure with _$ContactsFailure {
  const factory ContactsFailure.insufficientPermissions() =
      _InsufficientPermissions;

  const factory ContactsFailure.notFound() = _NotFound;

  const factory ContactsFailure.unexpected() = _Unexpected;

  const factory ContactsFailure.platformError() = _PlatformError;

  const factory ContactsFailure.notContactPermissions() = _NotContactPermissions;
}
