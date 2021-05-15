
import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_failure.freezed.dart';

@freezed
class CallFailure with _$CallFailure{
    const factory CallFailure.notCallNumberFound() = _NotCallNumberFound;

    const factory CallFailure.errorOnCall(String number) = _ErrorOnCall;
    
      }