import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_contacts/get_contacts.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';

part 'contact_actor_bloc.freezed.dart';
part 'contact_actor_event.dart';
part 'contact_actor_state.dart';

@injectable
class ContactActorBloc extends Bloc<ContactActorEvent, ContactActorState> {
  final IContactsRepository repository;

  ContactActorBloc(this.repository) : super(const ContactActorState.initial());

  @override
  Stream<ContactActorState> mapEventToState(
    ContactActorEvent event,
  ) async* {
    yield* event.map(
      delete: (e) async* {
        yield const ContactActorState.actionInProgress();
        final int contactsLength = e.contactList.length;
        final Either<ContactsFailure, Unit> failureOrUnit =
            await repository.deleteContactList(e.contactList);

        yield failureOrUnit.fold((f) => ContactActorState.contactsFailure(f),
            (_) => ContactActorState.deleteSuccessful(contactsLength));
      },
      loadContactsFromSystem: (e) async* {
        yield const ContactActorState.actionInProgress();

        final Either<ContactsFailure, List<Contact>> contactsEither =
            await _reloadContactsFromSystem();

        yield* contactsEither.fold(
          (f) async* {
            yield ContactActorState.contactsFailure(f);
          },
          (contactList) async* {
            final int contactsLength = contactList.length;
            final eitherCreateContacts =
                await repository.createContactList(contactList);

            yield eitherCreateContacts.fold(
              (f) => ContactActorState.contactsFailure(f),
              (r) => ContactActorState.loadSuccessful(contactsLength),
            );
          },
        );
      },
    );
  }

  Future<Either<ContactsFailure, List<Contact>>>
      _reloadContactsFromSystem() async {
    try {
      final String result = await GetContacts.contactsJsonString;
      return right(Contact.contactsFromOtherPlatformJson(result));
    } on PlatformException catch (e) {
      switch (e.code) {
        case "DENIED PERMISSIONS":
          return left(const ContactsFailure.deniedContactPermissions());
        case "DENIED PERMISSIONS PERMANENTLY":
          return left(
              const ContactsFailure.deniedPermanentlyContactPermissions());
        default:
          return left(const ContactsFailure.platformError());
      }
    }
  }
}
