part of 'add_contact_bloc.dart';

@freezed
abstract class AddContactEvent with _$AddContactEvent {
  const factory AddContactEvent.initialize(Option<Contact> contactOption) =
      _Initialize;

  const factory AddContactEvent.saved() = _Saved;

  const factory AddContactEvent.labelObjectChanged(
      ILabelObject labelObject, int pos) = _LabelObjectChanged;

  const factory AddContactEvent.addLabelObject(ILabelObject labelObject) =
      _AddLabelObject;

  const factory AddContactEvent.removeLabelObject(
      Type labelObjectType, int pos) = _RemoveLabelObject;

  const factory AddContactEvent.updateNameData(NameData nameData) =
      _UpdateNameData;

  const factory AddContactEvent.updateCompany(Company company) =
  _UpdateCompanyNameData;
}



