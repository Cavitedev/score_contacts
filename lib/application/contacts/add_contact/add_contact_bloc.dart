import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';

import './bloc.dart';

@injectable
class AddContactBloc extends Bloc<AddContactEvent, AddContactState> {
  AddContactBloc() : super(AddContactState());

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
      final List<ILabelObject> labelObjectList =
          List<ILabelObject>.from(state.labelObjects[event.labelObjectType]);
      labelObjectList.removeAt(event.pos);

      final Map<Type, List<ILabelObject>> labelObjects =
          Map.from(state.labelObjects);

      labelObjects[event.labelObjectType] = labelObjectList;
      yield state.copyWith(labelObjects: labelObjects);
    }
  }
}
