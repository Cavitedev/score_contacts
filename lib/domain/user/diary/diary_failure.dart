import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/core/app_localization.dart';

part 'diary_failure.freezed.dart';

@freezed
class DiaryFailure with _$DiaryFailure {
  const factory DiaryFailure.insufficientPermissions() =
      _InsufficientPermissions;

  const factory DiaryFailure.platformError() = _PlatformError;

  const factory DiaryFailure.unexpected() = _Unexpected;

  const factory DiaryFailure.notFound() = _NotFound;
}

String getDiaryFailureMessage(BuildContext context, DiaryFailure failure) {
  return AppLocalization.of(context).translate(failure.map(
    insufficientPermissions: (_) => "insufficient_permissions",
    notFound: (_) => "contact_not_found",
    unexpected: (_) => "unexpected_error",
    platformError: (_) => "platform_error",
  ));
}
