import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/application/contacts/selected_contact.dart';
import 'package:scorecontacts/domain/core/filter.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';

part 'contact_watcher_bloc.freezed.dart';
part 'contact_watcher_event.dart';
part 'contact_watcher_state.dart';

@injectable
class ContactWatcherBloc
    extends Bloc<ContactWatcherEvent, ContactWatcherState> {
  final IContactsRepository _contactsRepository;

  StreamSubscription<Either<ContactsFailure, List<Contact>>>
      _contactsSubscription;


  ContactWatcherBloc(this._contactsRepository)
      : super(const ContactWatcherState.initial());

  @override
  Stream<ContactWatcherState> mapEventToState(
    ContactWatcherEvent event,
  ) async* {
    yield* event.map(
      contactsReceived: (contactsState) async* {
        yield contactsState.contactsEither.fold(
            (failure) => ContactWatcherState.loadFailure(failure), (contacts) {
          _sortByNameAndSurname(contacts);

          return ContactWatcherState.loadSuccess(
              contacts
                  .map((contact) => SelectionContact(contact: contact))
                  .toList(),
              const Filter());
        });
      },
      watchAll: (e) async* {
        yield const ContactWatcherState.loadInProgress();
        _contactsSubscription?.cancel();
        _contactsSubscription = _contactsRepository.watchAllContacts().listen(
            (contactsEither) =>
                add(ContactWatcherEvent.contactsReceived(contactsEither)));
      },
      searchContact: (event) async* {
        yield* state.maybeMap(
            loadSuccess: (successState) async* {
              Filter filter = successState.filter;
              filter = filter?.copyWith(filterSearch: event.searchString);
              final List<SelectionContact> contacts =
                  successState.selectedContacts;
              _filterContacts(contacts, filter);
              yield successState.copyWith(
                  selectedContacts: contacts,
                  filter: filter);
            },
            orElse: () async* {});
      },
    );
  }

  void _sortByNameAndSurname(List<Contact> contacts) {
    contacts.sort((a, b) {
      return a.getFullName().toLowerCase().compareTo(b.getFullName().toLowerCase());
    });
  }

    void _filterContacts(List<SelectionContact> contacts, Filter filter) {
    if(filter.filterSearch == null) return;
    for(final SelectionContact selectionContact in contacts){
      final bool matches = selectionContact?.contact?.getFullName()?.toLowerCase()?.contains(filter?.filterSearch?.toLowerCase()) ?? false;
      selectionContact.display = matches;
    }

  }

}
