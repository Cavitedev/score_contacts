import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/application/contacts/selected_contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';

part 'contact_watcher_bloc.freezed.dart';
part 'contact_watcher_event.dart';
part 'contact_watcher_state.dart';

@injectable
class ContactWatcherBloc
    extends Bloc<ContactWatcherEvent, ContactWatcherState> {
  final IContactsRepository contactsRepository;

  ContactWatcherBloc(this.contactsRepository)
      : super(const ContactWatcherState.initial());

  @override
  Stream<ContactWatcherState> mapEventToState(
    ContactWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllAlphabeticOrder: (e) async* {
        yield* state.maybeMap(loadSuccess: (e) async* {
          _sortByNameAndSurnameSelectedContacts(e.selectedContacts);
          yield e;
        }, orElse: () async* {
          yield const ContactWatcherState.loadInProgress();

          yield* contactsRepository.watchAllContacts().map((either) {
            return either
                .fold((failure) => ContactWatcherState.loadFailure(failure),
                    (contacts) {
              _sortByNameAndSurname(contacts);

              return ContactWatcherState.loadSuccess(contacts
                  .map((contact) => SelectedContact(contact: contact))
                  .toList());
            });
          });
        });
      },
    );
  }

  void _sortByNameAndSurname(List<Contact> contacts) {
    contacts.sort((a, b) {
      return _getFullName(a).compareTo(_getFullName(b));
    });
  }

  void _sortByNameAndSurnameSelectedContacts(List<SelectedContact> contacts) {
    _sortByNameAndSurname(
        contacts.map((selectedContact) => selectedContact.contact).toList());
  }

  String _getFullName(Contact contact) {
    return (contact.nameData.firstName + (contact.nameData.surnames ?? ""))
        .toLowerCase();
  }
}
