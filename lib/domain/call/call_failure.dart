import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/core/app_localization.dart';

part 'call_failure.freezed.dart';

@freezed
class CallFailure with _$CallFailure {
  const factory CallFailure.notCallNumberFound() = _NotCallNumberFound;

  const factory CallFailure.errorOnCall(String number) = _ErrorOnCall;
}

String getCallFailureMessage(BuildContext context, CallFailure failure) {
  return AppLocalization.of(context).translate(
      failure.map(
          notCallNumberFound: (f) => "number_not_found",
          errorOnCall: (f) => "error_call"),
      args: failure.maybeMap(
        errorOnCall: (f) => [f.number],
        orElse: () => [],
      ));
}
