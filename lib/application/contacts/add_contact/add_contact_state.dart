part of 'add_contact_bloc.dart';

@freezed
abstract class AddContactState implements _$AddContactState {
  const AddContactState._();

  const factory AddContactState(
          {@required Map<Type, List<ILabelObject>> labelObjects}) =
      _AddContactState;

  factory AddContactState.initial() => const AddContactState(labelObjects: {
        Phone: <Phone>[Phone()],
        Email: <Email>[Email()]
      });
}
