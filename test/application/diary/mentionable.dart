import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';

///Mentionable implementation for tests and dtos
class Mentionable implements IMentionable {
  final String name;
  final UniqueID? uniqueID;
  final String? image;

  const Mentionable(this.name, {this.uniqueID, this.image});

  // For testing
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
          name == other.name &&
          uniqueID == other.uniqueID &&
          image == other.image;

  @override
  int get hashCode => name.hashCode ^ uniqueID.hashCode ^ image.hashCode;

  @override
  String toString() {
    return 'Mentionable{name: $name, uniqueID: $uniqueID, image: $image}';
  }
}
