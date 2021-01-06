import 'package:uuid/uuid.dart';

class UniqueID {
  final String value;

  const UniqueID._(this.value);

  factory UniqueID() {
    return UniqueID._(Uuid().v1());
  }

  factory UniqueID.fromUniqueString(String uniqueID) {
    assert(uniqueID != null);
    return UniqueID._(uniqueID);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UniqueID &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
