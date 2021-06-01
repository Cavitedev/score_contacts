import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_failure.freezed.dart';
@freezed
class DiaryFailure with _$DiaryFailure{
  
  
  const factory DiaryFailure.insufficientPermissions() = _InsufficientPermissions;
  
  const factory DiaryFailure.platformError() = _PlatformError;
  
    const factory DiaryFailure.unexpected() = _Unexpected;
      }