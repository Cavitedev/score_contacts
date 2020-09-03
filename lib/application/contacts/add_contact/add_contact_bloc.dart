import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

part 'add_contact_bloc.freezed.dart';

part 'add_contact_event.dart';

part 'add_contact_state.dart';

@injectable
class AddContactBloc extends Bloc<AddContactEvent, AddContactState> {
  AddContactBloc() : super(AddContactState.initial());

  @override
  Stream<AddContactState> mapEventToState(
    AddContactEvent event,
  ) async* {
    yield* event.map(
      labelObjectChanged: (e) async* {
        final List<ILabelObject> labelObjectList = List<ILabelObject>.from(
            state.labelObjects[e.labelObject.runtimeType]);
        labelObjectList[e.pos] = e.labelObject;

        final Map<Type, List<ILabelObject>> labelObjects =
            Map.from(state.labelObjects);

        labelObjects[e.labelObject.runtimeType] = labelObjectList;
        yield state.copyWith(labelObjects: labelObjects);
      },
      addLabelObject: (e) async* {
        final List<ILabelObject> labelObjectList = List<ILabelObject>.from(
            state.labelObjects[e.labelObject.runtimeType]);
        labelObjectList.add(e.labelObject);

        final Map<Type, List<ILabelObject>> labelObjects =
        Map.from(state.labelObjects);

        labelObjects[e.labelObject.runtimeType] = labelObjectList;
        yield state.copyWith(labelObjects: labelObjects);
      },
      removeLabelObject: (e) async* {
        final List<ILabelObject> labelObjectList =
        List<ILabelObject>.from(state.labelObjects[e.labelObjectType]);
        labelObjectList.removeAt(e.pos);

        final Map<Type, List<ILabelObject>> labelObjects =
        Map.from(state.labelObjects);

        labelObjects[e.labelObjectType] = labelObjectList;
        yield state.copyWith(labelObjects: labelObjects);
      },
      updateNameData: (e) async* {
        yield state.copyWith(nameData: e.nameData);
      },
      updateCompany: (e) async* {
        yield state.copyWith(company: e.company);
      },
    );
  }
}
