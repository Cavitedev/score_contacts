import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/website.dart';

@immutable
abstract class AddContactEvent {
  const AddContactEvent();
}

class MailChangedEvent extends AddContactEvent {
  final Email email;
  final int pos;

  const MailChangedEvent({@required this.email, this.pos = 0});
}

class AddLabelElement<T extends ILabelObject> extends AddContactEvent {
  const AddLabelElement();
}

class RemoveLabelElement<T extends ILabelObject> extends AddContactEvent {
  final int pos;

  const RemoveLabelElement({@required this.pos}) : assert(pos >= 0);
}

class WebsiteChangedEvent extends AddContactEvent {
  final Website website;
  final int pos;

  const WebsiteChangedEvent({@required this.website, this.pos = 0});
}
