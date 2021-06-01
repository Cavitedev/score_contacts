import 'package:freezed_annotation/freezed_annotation.dart';

part 'mention_failure.freezed.dart';

@freezed
class MentionFailure with _$MentionFailure{
  
  
  const factory MentionFailure.insufficientPermissions() = _InsufficientPermissions;
  
  const factory MentionFailure.platformError() = _PlatformError;
  
    const factory MentionFailure.unexpected() = _Unexpected;
      }