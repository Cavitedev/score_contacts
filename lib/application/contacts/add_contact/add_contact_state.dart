part of 'add_contact_bloc.dart';

@freezed
abstract class AddContactState implements _$AddContactState {
  const AddContactState._();

  const factory AddContactState({
    @required Map<Type, List<ILabelObject>> labelObjects,
    NameData nameData,
    Company company,
  }) = _AddContactState;

  factory AddContactState.initial() => const AddContactState(
        company: Company(),
        nameData: NameData(),
        labelObjects: {
          Phone: <Phone>[Phone()],
          Email: <Email>[Email()],
        },
      );
}
