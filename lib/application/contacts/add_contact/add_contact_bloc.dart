import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/email.dart';

import './bloc.dart';

@injectable
class AddContactBloc extends Bloc<AddContactEvent, AddContactState> {
  @override
  AddContactState get initialState => const AddContactState();

  @override
  Stream<AddContactState> mapEventToState(
    AddContactEvent event,
  ) async* {
    print(event);
    if (event is AddLabelElement) {
      if (event is AddLabelElement<Email>) {
        final List<Email> emails = List<Email>.from(state.emails);
        emails.add(const Email());
        yield state.copyWith(emails: emails);
      }
    } else if (event is RemoveLabelElement) {
      if (event is RemoveLabelElement<Email>) {
        print(event.pos);
        final List<Email> emails = List<Email>.from(state.emails);
        emails.removeAt(event?.pos);
        yield state.copyWith(emails: emails);
      }
    }
  }
}
