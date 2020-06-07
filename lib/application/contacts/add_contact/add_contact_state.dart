import 'package:scorecontacts/domain/features/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/phone.dart';

class AddContactState {
  Map<Type, List<ILabelObject>> labelObjects;

  AddContactState({
    this.labelObjects = const {
      Phone: <Phone>[Phone()],
      Email: <Email>[Email()]
    }
  });

  AddContactState copyWith({
    Map<Type, List<ILabelObject>> labelObjects,
  }) {
    if (labelObjects == null || identical(labelObjects, this.labelObjects)) {
      return this;
    }

    return AddContactState(
      labelObjects: labelObjects ?? this.labelObjects,
    );
  }
}

