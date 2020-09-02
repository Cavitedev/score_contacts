import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
abstract class Company implements _$Company {
  const Company._();

  const factory Company({
    String name,
    String title,
  }) = _Company;
}
