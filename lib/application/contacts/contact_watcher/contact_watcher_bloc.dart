import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';

part 'contact_watcher_bloc.freezed.dart';

part 'contact_watcher_event.dart';

part 'contact_watcher_state.dart';

@injectable
class ContactWatcherBloc
    extends Bloc<ContactWatcherEvent, ContactWatcherState> {
  ContactWatcherBloc(this.contactsRepository)
      : super(const ContactWatcherState.initial());
  final IContactsRepository contactsRepository;

  @override
  Stream<ContactWatcherState> mapEventToState(
    ContactWatcherEvent event,
  ) async* {
    yield* event.map(watchAllAlphabeticOrder: (e) async* {
      yield* state.maybeMap(loadSuccess: (e) async* {
        _sortByNameAndSurname(e.contacts);
        yield e;
      }, orElse: () async* {
        yield const ContactWatcherState.loadInProgress();

        yield* contactsRepository.watchAllContacts().map((either) {
          return either
              .fold((failure) => ContactWatcherState.loadFailure(failure),
                  (contacts) {
            _sortByNameAndSurname(contacts);
            return ContactWatcherState.loadSuccess(contacts);
          });
        });
      });
    });
  }

  void _sortByNameAndSurname(List<Contact> contacts) {
    contacts.sort((a, b) {
      return _getFullName(a).compareTo(_getFullName(b));
    });
  }

  String _getFullName(Contact contact) {
    return (contact.nameData.firstName + contact.nameData.surnames)
        .toLowerCase();
  }
}
