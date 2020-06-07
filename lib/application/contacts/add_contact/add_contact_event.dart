import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';

@immutable
abstract class AddContactEvent {
  const AddContactEvent();
}

class LabelObjectChangedEvent extends AddContactEvent {
  final ILabelObject labelObject;
  final int pos;

  const LabelObjectChangedEvent({
    @required this.labelObject,
    this.pos = 0,
  });
}

class AddLabelElement extends AddContactEvent {
  final ILabelObject labelObject;

  const AddLabelElement({@required this.labelObject});
}

class RemoveLabelElement extends AddContactEvent {
  final int pos;
  final Type labelObjectType;

  const RemoveLabelElement({@required this.pos, @required this.labelObjectType})
      : assert(pos >= 0);
}
