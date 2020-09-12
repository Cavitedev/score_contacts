import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';

part 'add_contact_bloc.freezed.dart';
part 'add_contact_event.dart';
part 'add_contact_state.dart';

@injectable
class AddContactBloc extends Bloc<AddContactEvent, AddContactState> {
  final IContactsRepository repository;

  AddContactBloc(this.repository) : super(AddContactState.initial());

  @override
  Stream<AddContactState> mapEventToState(
    AddContactEvent event,
  ) async* {
    yield* event.map(
      initialize: (e) async* {
        yield e.contactOption.fold(
          () => state,
          (contact) {
            if (contact.companies.isEmpty) {
              contact = contact.copyWith(companies: [Company.empty()]);
            }
            return state.copyWith(contact: contact);
          },
        );
      },
      saved: (e) async* {
        yield state.copyWith(isSaving: true, savingOrFailureOption: none());

        final savingOrFailureOption = await (state.isEditting
            ? repository.updateContact(state.contact)
            : repository.createContact(state.contact));
        yield state.copyWith(
            isSaving: false,
            savingOrFailureOption: optionOf(savingOrFailureOption));
      },
      labelObjectChanged: (e) async* {
        final List<ILabelObject> labelObjectList = List<ILabelObject>.from(
            state.contact.labelObjects[e.labelObject.runtimeType]);
        labelObjectList[e.pos] = e.labelObject;

        final Map<Type, List<ILabelObject>> labelObjects =
            Map.from(state.contact.labelObjects);

        labelObjects[e.labelObject.runtimeType] = labelObjectList;
        yield state.copyWith(
            contact: state.contact.copyWith(labelObjects: labelObjects));
      },
      addLabelObject: (e) async* {
        final List<ILabelObject> labelObjectList = List<ILabelObject>.from(
            state.contact.labelObjects[e.labelObject.runtimeType]);
        labelObjectList.add(e.labelObject);

        final Map<Type, List<ILabelObject>> labelObjects =
        Map.from(state.contact.labelObjects);

        labelObjects[e.labelObject.runtimeType] = labelObjectList;
        yield state.copyWith(
            contact: state.contact.copyWith(labelObjects: labelObjects));
      },
      removeLabelObject: (e) async* {
        final List<ILabelObject> labelObjectList = List<ILabelObject>.from(
            state.contact.labelObjects[e.labelObjectType]);
        labelObjectList.removeAt(e.pos);

        final Map<Type, List<ILabelObject>> labelObjects =
        Map.from(state.contact.labelObjects);

        labelObjects[e.labelObjectType] = labelObjectList;
        yield state.copyWith(
            contact: state.contact.copyWith(labelObjects: labelObjects));
      },
      updateNameData: (e) async* {
        yield state.copyWith(
            contact: state.contact.copyWith(nameData: e.nameData));
      },
      updateCompany: (e) async* {
        final List<Company> companies = List.of(state.contact.companies);
        companies[e.index] = e.company;

        yield state.copyWith(
            contact: state.contact.copyWith(companies: companies));
      },
      addCompany: (e) async* {
        final List<Company> companies = List.of(state.contact.companies);
        companies.add(Company.empty());
        yield state.copyWith(
            contact: state.contact.copyWith(companies: companies));
      },
      deleteCompany: (e) async* {
        final List<Company> companies = List.of(state.contact.companies);
        companies.removeAt(e.index);
        yield state.copyWith(
            contact: state.contact.copyWith(companies: companies));
      },
    );
  }
}
