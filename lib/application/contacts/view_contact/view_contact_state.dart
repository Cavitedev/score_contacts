part of 'view_contact_bloc.dart';

@freezed
class ViewContactState with _$ViewContactState{
  const ViewContactState._();

    const factory ViewContactState({
      required Contact contact
    }) = _ViewContactState;

    factory ViewContactState.initial() =>
        ViewContactState(
          contact: Contact.empty()
        );

      }