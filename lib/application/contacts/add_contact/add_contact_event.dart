part of 'add_contact_bloc.dart';

@freezed
class AddContactEvent with _$AddContactEvent{
  const factory AddContactEvent.initialize(
      Option<Contact> contactOption, String countryCode) = _Initialize;

  const factory AddContactEvent.saved(String countryCode) = _Saved;

  const factory AddContactEvent.labelObjectChanged(
      ILabelObject labelObject, int pos) = _LabelObjectChanged;

  const factory AddContactEvent.addLabelObject(ILabelObject labelObject) =
      _AddLabelObject;

  const factory AddContactEvent.removeLabelObject(
      Type labelObjectType, int pos) = _RemoveLabelObject;

  const factory AddContactEvent.updateNameData(NameData nameData) =
      _UpdateNameData;

  const factory AddContactEvent.updateCompany(Company company, int index) =
      _UpdateCompany;

  const factory AddContactEvent.addCompany() = _AddCompany;

  const factory AddContactEvent.deleteCompany(int index) = _DeleteCompany;

  const factory AddContactEvent.updateImage(PickedFile file) = _UpdateImage;

}



