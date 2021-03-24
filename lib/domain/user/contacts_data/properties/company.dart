import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
class Company with _$Company {
  const Company._();

  const factory Company({
    String? name,
    String? title,
  }) = _Company;

  factory Company.empty() {
    return const Company();
  }

  factory Company.fromJson(Map<String, dynamic> json) {
    final String? name = json["name"] as String?;
    final String? title = json["title"] as String?;
    return Company(name: name, title: title);

  }
}
