import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';

import './bloc.dart';

@injectable
class AddContactBloc extends Bloc<AddContactEvent, AddContactState> {
  @override
  AddContactState get initialState => AddContactState();

  @override
  Stream<AddContactState> mapEventToState(
    AddContactEvent event,
  ) async* {
    if (event is LabelObjectChangedEvent) {
      final List<ILabelObject> labelObjectList = List<ILabelObject>.from(
          state.labelObjects[event.labelObject.runtimeType]);
      labelObjectList[event.pos] = event.labelObject;
      final Map<Type, List<ILabelObject>> labelObjects =
          Map.from(state.labelObjects);
      labelObjects[event.labelObject.runtimeType] = labelObjectList;
      yield state.copyWith(labelObjects: labelObjects);
    } else if (event is AddLabelElement) {
      final List<ILabelObject> labelObjectList = List<ILabelObject>.from(
          state.labelObjects[event.labelObject.runtimeType]);
      labelObjectList.add(event.labelObject);

      final Map<Type, List<ILabelObject>> labelObjects =
          Map.from(state.labelObjects);

      labelObjects[event.labelObject.runtimeType] = labelObjectList;
      yield state.copyWith(labelObjects: labelObjects);
    } else if (event is RemoveLabelElement) {
      final List<ILabelObject> labelObjectList = List<ILabelObject>.from(
          state.labelObjects[event.labelObjectType]);
      labelObjectList.removeAt(event.pos);

      final Map<Type, List<ILabelObject>> labelObjects =
      Map.from(state.labelObjects);

      labelObjects[event.labelObjectType] = labelObjectList;
      yield state.copyWith(labelObjects: labelObjects);
    }

//    if (event is LabelObjectChangedEvent) {
//      final List<Email> emails = List<Email>.from(state.emails);
//      emails[event.pos] = event.email;
//      yield state.copyWith(emails: emails);
//    } else if (event is PhoneChangedEvent) {
//      final List<Phone> phones = List<Phone>.from(state.phones);
//      phones[event.pos] = event.phone;
//      yield state.copyWith(phones: phones);
//    } else if (event is AddLabelElement) {
//      if (event is AddLabelElement<Email>) {
//        final List<Email> emails = List<Email>.from(state.emails);
//        emails.add(const Email());
//        yield state.copyWith(emails: emails);
//      } else if (event is AddLabelElement<Phone>) {
//        final List<Phone> phones = List<Phone>.from(state.phones);
//        phones.add(const Phone());
//        yield state.copyWith(phones: phones);
//      }
//    } else if (event is RemoveLabelElement) {
//      if (event is RemoveLabelElement<Email>) {
//        final List<Email> emails = List<Email>.from(state.emails);
//        emails.removeAt(event.pos);
//        yield state.copyWith(emails: emails);
//      } else if (event is RemoveLabelElement<Phone>) {
//        final List<Phone> phones = List<Phone>.from(state.phones);
//        phones.removeAt(event.pos);
//        yield state.copyWith(phones: phones);
//      }
//    }
  }
}
