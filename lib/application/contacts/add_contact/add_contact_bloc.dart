import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/contact_image.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

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
      initialize: _initialize,
      saved: _saved,
      labelObjectChanged: _labelObjectChanged,
      addLabelObject: _addLabelObject,
      removeLabelObject: _removeLabelObject,
      updateNameData: _updateNameData,
      updateCompany: _updateCompany,
      addCompany: _addCompany,
      deleteCompany: _deleteCompany,
      updateImage: _updateImage,
    );
  }

  Stream<AddContactState> _initialize(_Initialize e) async* {
    yield e.contactOption.fold(
      () => state,
      (contact) {
        return state.copyWith(
            contact: contact.fromDatabase(e.countryCode), isEditting: true);
      },
    );
  }

  Stream<AddContactState> _saved(_Saved e) async* {
    yield state.copyWith(isSaving: true, savingOrFailureOption: none());

    final List<Phone> phonesList = List<Phone>.from(state.contact.labelObjects![Phone]!);
    for (int i = 0; i < phonesList.length; i++) {
      phonesList[i] = phonesList[i].toDatabaseString(e.countryCode);
    }
    final Map<Type, List<ILabelObject>> labelObjects =
        Map.from(state.contact.labelObjects!);
    labelObjects[Phone] = phonesList;
    final Contact sendedContact = state.contact.copyWith(labelObjects: labelObjects);

    final savingOrFailureOption = await (state.isEditting
        ? repository.updateContact(sendedContact)
        : repository.createContact(sendedContact));
    yield state.copyWith(
        isSaving: false, savingOrFailureOption: optionOf(savingOrFailureOption));
  }

  Stream<AddContactState> _labelObjectChanged(_LabelObjectChanged e) async* {
    final List<ILabelObject> labelObjectList =
        List<ILabelObject>.from(state.contact.labelObjects![e.labelObject.runtimeType]!);
    labelObjectList[e.pos] = e.labelObject;

    final Map<Type, List<ILabelObject>> labelObjects =
        Map.from(state.contact.labelObjects!);

    labelObjects[e.labelObject.runtimeType] = labelObjectList;
    yield state.copyWith(contact: state.contact.copyWith(labelObjects: labelObjects));
  }

  Stream<AddContactState> _addLabelObject(_AddLabelObject e) async* {
    final List<ILabelObject> labelObjectList =
        List<ILabelObject>.from(state.contact.labelObjects![e.labelObject.runtimeType]!);
    labelObjectList.add(e.labelObject);

    final Map<Type, List<ILabelObject>> labelObjects =
        Map.from(state.contact.labelObjects!);

    labelObjects[e.labelObject.runtimeType] = labelObjectList;
    yield state.copyWith(contact: state.contact.copyWith(labelObjects: labelObjects));
  }

  Stream<AddContactState> _removeLabelObject(_RemoveLabelObject e) async* {
    final List<ILabelObject> labelObjectList =
        List<ILabelObject>.from(state.contact.labelObjects![e.labelObjectType]!);
    labelObjectList.removeAt(e.pos);

    final Map<Type, List<ILabelObject>> labelObjects =
        Map.from(state.contact.labelObjects!);

    labelObjects[e.labelObjectType] = labelObjectList;
    yield state.copyWith(contact: state.contact.copyWith(labelObjects: labelObjects));
  }

  Stream<AddContactState> _updateNameData(_UpdateNameData e) async* {
    yield state.copyWith(contact: state.contact.copyWith(nameData: e.nameData));
  }

  Stream<AddContactState> _updateCompany(_UpdateCompany e) async* {
    final List<Company> companies = List.of(state.contact.companies!);
    companies[e.index] = e.company;

    yield state.copyWith(contact: state.contact.copyWith(companies: companies));
  }

  Stream<AddContactState> _addCompany(_AddCompany e) async* {
    final List<Company> companies = List.of(state.contact.companies!);
    companies.add(Company.empty());
    yield state.copyWith(contact: state.contact.copyWith(companies: companies));
  }

  Stream<AddContactState> _deleteCompany(_DeleteCompany e) async* {
    final List<Company> companies = List.of(state.contact.companies!);
    companies.removeAt(e.index);
    yield state.copyWith(contact: state.contact.copyWith(companies: companies));
  }

  Stream<AddContactState> _updateImage(_UpdateImage e) async* {
    ContactImage? contactImage = state.contact.contactImage;
    if (contactImage == null) {
      contactImage = ContactImage(file: e.file);
    } else {
      if (e.file != null) {
        contactImage = contactImage.copyWith(file: e.file);
      } else {
        contactImage = ContactImage.deleted();
      }
    }
    yield state.copyWith(
      contact: state.contact.copyWith(contactImage: contactImage),
    );
  }
}
