import 'package:scorecontacts/domain/mention/i_mentionable.dart';

class Mentionable implements IMentionable {

  final String name;


  const Mentionable(this.name);

  @override
  String getName() {
    return name;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mentionable &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}
