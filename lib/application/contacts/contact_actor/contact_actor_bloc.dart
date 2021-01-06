import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/core/errors/general_errors.dart';
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
        ContactActorState successfulState;
        state.maybeMap(selectContacts: (state) {
          final bool wasSelected = state.selectedContacts.remove(e.contact);
          if (wasSelected) {
            if (state.selectedContacts.isEmpty) {
              successfulState = const ContactActorState.deleteSuccessful();
            } else {
              successfulState =
                  ContactActorState.selectContacts(state.selectedContacts);
            }
          } else {
            successfulState = state;
          }
        }, orElse: () {
          successfulState = const ContactActorState.deleteSuccessful();
        });
        yield const ContactActorState.actionInProgress();
        final Either<ContactsFailure, Unit> failureOrUnit =
            await repository.deleteContact(e.contact);

        yield failureOrUnit.fold(
            (f) => ContactActorState.deleteFailure(f), (_) => successfulState);
      },
      deleteSelectedContacts: (e) async* {
        yield* state.maybeMap(
            selectContacts: (state) async* {
              yield const ContactActorState.actionInProgress();
              final List<Future<Either<ContactsFailure, Unit>>>
                  failureOrUnitsFutures = [];
              for (final Contact contact in state.selectedContacts) {
                failureOrUnitsFutures.add(repository.deleteContact(contact));
              }
              final failuresOrUnits = await Future.wait(failureOrUnitsFutures);
              for (final failureOrUnit in failuresOrUnits) {
                if (failureOrUnit.isLeft()) {
                  yield failureOrUnit.fold(
                      (f) => ContactActorState.deleteFailure(f),
                      (_) =>
                          throw ImpossibleToReachError(msg: "Should be left"));
                  return;
                }
              }
              yield const ContactActorState.deleteSuccessful();
            },
            orElse: () => throw ImpossibleToReachError(
                msg:
                    "Event should only be called if there are any selected contact"));
      },
      toggleSelectionContact: (e) async* {
        yield* state.maybeMap(
          selectContacts: (state) async* {
            final Set<Contact> selectedContacts =
                Set.of(state.selectedContacts);
            if (selectedContacts.contains(e.contact)) {
              selectedContacts.remove(e.contact);
            } else {
              selectedContacts.add(e.contact);
            }

            if (selectedContacts.isEmpty) {
              yield const ContactActorState.initial();
            } else {
              yield ContactActorState.selectContacts(selectedContacts);
            }
          },
          orElse: () async* {
            yield ContactActorState.selectContacts({e.contact});
          },
        );
      },
      deselectAllContacts: (e) async* {
        yield* state.maybeMap(
          selectContacts: (state) async* {
            yield const ContactActorState.initial();
          },
          orElse: () async* {
            yield state;
          },
        );
      },
      loadContactsFromSystem: (e) async* {
        await _reloadContactsFromSystem();
        yield state;
      },
    );
  }

  Future<void> _reloadContactsFromSystem() async {
    const channel = MethodChannel("com.cavitedev.scorecontacts/contacts");
    String result = await channel.invokeMethod("getContacts");
    print(result);
  }
}
