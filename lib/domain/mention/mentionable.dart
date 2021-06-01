import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';

class Mentionable implements IMentionable {
  final String name;
  final UniqueID? uniqueID;
  final String? image;

  const Mentionable(this.name, {this.uniqueID, this.image});

  @override
  UniqueID get id => uniqueID ?? UniqueID.fromUniqueString("test");

  @override
  String? get imageLink => image;

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
