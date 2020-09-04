import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';
import 'package:scorecontacts/infrastructure/firebase_core/server_time_stamp_converter.dart';

part 'contact_dtos.freezed.dart';

part 'contact_dtos.g.dart';

const String nameDataName = "nameData";
const String companiesName = "companies";
const String emailsName = "emails";
const String phonesName = "phones";

@freezed
abstract class ContactDTO implements _$ContactDTO {
  const ContactDTO._();

  const factory ContactDTO({
    @JsonKey(ignore: true) String id,
    @JsonKey(name: nameDataName) NameDataDTO nameDataDTO,
    @JsonKey(name: companiesName) List<CompanyDTO> companiesDTO,
    @JsonKey(name: emailsName) List<LabelObjectDTO<ILabelObject>> emailsDTO,
    @JsonKey(name: phonesName) List<LabelObjectDTO<ILabelObject>> phonesDTO,
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
  }) = _ContactDTO;

  factory ContactDTO.fromDomain(Contact contact) {
    return ContactDTO(
      id: contact.id.value,
      nameDataDTO: NameDataDTO.fromDomain(contact.nameData),
      companiesDTO: contact.companies
          .where((comp) => comp.title != null || comp.name != null)
          .map((comp) => CompanyDTO.fromDomain(comp))
          .toList(),
      emailsDTO: contact.labelObjects[Email]
          .where((email) => email.value != null)
          .map((emailLabelObject) =>
              LabelObjectDTO<Email>.fromDomain(emailLabelObject))
          .toList(),
      phonesDTO: contact.labelObjects[Phone]
          .where((phone) => phone.value != null)
          .map((labelObject) => LabelObjectDTO<Phone>.fromDomain(labelObject))
          .toList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Contact toDomain() {
    return Contact(
      id: UniqueID.fromUniqueString(id),
      nameData: nameDataDTO.toDomain(),
      companies: companiesDTO.map((comp) => comp.toDomain()).toList(),
      labelObjects: {
        Email: emailsDTO.map((dto) => dto.toDomain()).toList(),
        Phone: phonesDTO.map((dto) => dto.toDomain()).toList(),
      },
    );
  }

  factory ContactDTO.fromJson(Map<String, dynamic> json) =>
      _$ContactDTOFromJson(json);

  factory ContactDTO.fromFirestore(DocumentSnapshot doc) {
    return ContactDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

@freezed
abstract class NameDataDTO implements _$NameDataDTO {
  const NameDataDTO._();

  const factory NameDataDTO({
    String name,
    String surname,
  }) = _NameDataDTO;

  factory NameDataDTO.fromDomain(NameData nameData) {
    return NameDataDTO(
      name: nameData.firstName,
      surname: nameData.surnames,
    );
  }

  NameData toDomain() {
    return NameData(firstName: name, surnames: surname);
  }

  factory NameDataDTO.fromJson(Map<String, dynamic> json) =>
      _$NameDataDTOFromJson(json);
}

@freezed
abstract class LabelObjectDTO<T extends ILabelObject>
    implements _$LabelObjectDTO<T> {
  const LabelObjectDTO._();

  const factory LabelObjectDTO({
    String name,
    String label,
  }) = _LabelObjectDTO;

  factory LabelObjectDTO.fromDomain(ILabelObject labelObject) {
    return LabelObjectDTO(
      name: labelObject.value,
      label: labelObject.label,
      // type: labelObject.runtimeType,
    );
  }

  T toDomain() {
    return LabelObject(
      value: name,
      label: label,
    ) as T;
  }

  factory LabelObjectDTO.fromJson(Map<String, dynamic> json) =>
      _$LabelObjectDTOFromJson(json);
}

@freezed
abstract class CompanyDTO implements _$CompanyDTO {
  const CompanyDTO._();

  const factory CompanyDTO({
    String name,
    String title,
  }) = _CompanyDTO;

  factory CompanyDTO.fromDomain(Company company) {
    return CompanyDTO(
      name: company.name,
      title: company.title,
    );
  }

  Company toDomain() {
    return Company(title: title, name: name);
  }

  factory CompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$CompanyDTOFromJson(json);
}
