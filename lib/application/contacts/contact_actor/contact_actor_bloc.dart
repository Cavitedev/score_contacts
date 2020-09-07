import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
    event.map(delete: (e) async* {
      yield const ContactActorState.actionInProgress();

      final Either<ContactsFailure, Unit> failureOrUnit =
          await repository.deleteContact(e.contact);

      yield failureOrUnit.fold(
        (f) => ContactActorState.deleteFailure(f),
        (_) => const ContactActorState.deleteSuccessful(),
      );
    });
  }
}
