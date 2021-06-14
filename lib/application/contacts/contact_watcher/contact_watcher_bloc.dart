import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/domain/core/filter.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';

part 'contact_watcher_bloc.freezed.dart';
part 'contact_watcher_event.dart';
part 'contact_watcher_state.dart';

@injectable
class ContactWatcherBloc extends Bloc<ContactWatcherEvent, ContactWatcherState> {
  final IContactsRepository _contactsRepository;

  StreamSubscription<Either<ContactsFailure, List<Contact>>>? _contactsSubscription;

  ContactWatcherBloc(this._contactsRepository) : super(const ContactWatcherState.initial());

  @override
  Stream<ContactWatcherState> mapEventToState(
    ContactWatcherEvent event,
  ) async* {
    yield* event.map(
      contactsReceived: (contactsState) async* {
        yield contactsState.contactsEither.fold((failure) => ContactWatcherState.loadFailure(failure), (contacts) {
          _sortByNameAndSurname(contacts);

          return ContactWatcherState.loadSuccess(LoadSuccessValues(
              selectionContactList: contacts.map((contact) => SelectionContact(contact: contact)).toList(),
              filter: const Filter(),
              selectedContactsAmount: 0));
        });
      },
      watchAll: (e) async* {
        yield const ContactWatcherState.loadInProgress();
        _contactsSubscription?.cancel();
        _contactsSubscription = _contactsRepository
            .watchAllContacts()
            .listen((contactsEither) => add(ContactWatcherEvent.contactsReceived(contactsEither)));
      },
      searchContact: (event) async* {
        yield* state.maybeMap(
            loadSuccess: (successState) async* {
              final LoadSuccessValues values = successState.stateValues;
              Filter? filter = values.filter;
              filter = filter?.copyWith(filterSearch: event.searchString);
              final List<SelectionContact> contacts = values.selectionContactList;
              _filterContacts(contacts, filter);
              yield successState.copyWith(stateValues: values.copyWith(selectionContactList: contacts, filter: filter));
            },
            orElse: () async* {});
      },
      toggleSelectionContact: (e) async* {
        yield* state.maybeMap(
          loadSuccess: (state) async* {
            e.selectionContact.toggleSelection();

            yield state.copyWith(
                stateValues: state.stateValues.addOrDecrease1SelectedContact(isAdd: e.selectionContact.isSelected));
          },
          orElse: () async* {},
        );
      },
      deselectAllContacts: (e) async* {
        yield* state.maybeMap(
          loadSuccess: (state) async* {
            yield state.copyWith(stateValues: state.stateValues.deselectAll());
          },
          orElse: () async* {},
        );
      },
      selectAllContacts: (e) async* {
        yield* state.maybeMap(
          loadSuccess: (state) async* {
            yield state.copyWith(stateValues: state.stateValues.selectAll());
          },
          orElse: () async* {},
        );
      },
    );
  }

  void _sortByNameAndSurname(List<Contact> contacts) {

    contacts.sort();
  }

  void _filterContacts(List<SelectionContact> contacts, Filter? filter) {
    if (filter == null || filter.filterSearch == null || filter.filterSearch == "") {
      for (final SelectionContact selectionContact in contacts) {
        selectionContact.display = true;
        selectionContact.filterText = null;
      }
      return;
    }
    for (final SelectionContact selectionContact in contacts) {
      final String? match = selectionContact.contact.matchPattern(filter.filterSearch);
      selectionContact.display = match != null;

      selectionContact.filterText = match;
    }
  }
}
