import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
        for(final contact in e.contactList){
        final Either<ContactsFailure, Unit> failureOrUnit =
        await repository.deleteContact(contact);

        yield failureOrUnit.fold((f) => ContactActorState.contactsFailure(f),
        (_) => const ContactActorState.deleteSuccessful());
        }

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
            final eitherCreateContacts =
                await repository.createContactList(contactList);

            yield eitherCreateContacts.fold(
              (f) => ContactActorState.contactsFailure(f),
              (r) => state,
            );
          },
        );
      },
    );
  }

  Future<Either<ContactsFailure, List<Contact>>>
      _reloadContactsFromSystem() async {
    const channel = MethodChannel("com.cavitedev.scorecontacts/contacts");

    try {
      final String result = await channel.invokeMethod("getContacts");
      return right(Contact.contactsFromOtherPlatformJson(result));
    } on PlatformException {
      return left(const ContactsFailure.platformError());
    }
  }
}
