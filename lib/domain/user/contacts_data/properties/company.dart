import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
abstract class Company implements _$Company {
  const Company._();

  const factory Company({
    String name,
    String title,
  }) = _Company;

  factory Company.empty() {
    return const Company(
      name: null,
      title: null,
    );
  }

  factory Company.fromJson(Map<String, dynamic> json) {
    String name = json["name"] as String;
    String title = json["title"] as String;
    return Company(name: name, title: title);

  }
}
