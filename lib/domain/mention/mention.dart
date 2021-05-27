import 'package:freezed_annotation/freezed_annotation.dart';

part 'mention.freezed.dart';



@freezed
class Mention with _$Mention {
  const Mention._();

  const factory Mention({
    required String id,
    required String name,
  }) = _Mention;
}
