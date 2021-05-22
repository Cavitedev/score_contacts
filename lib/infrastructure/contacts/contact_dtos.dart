import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/contact_image.dart';
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
const String imageUrlName = "imageUrl";

@freezed
class ContactDTO with _$ContactDTO {
  const ContactDTO._();

  const factory ContactDTO({
    @JsonKey(ignore: true) String? id,
    @JsonKey(name: nameDataName) required NameDataDTO nameDataDTO,
    @JsonKey(name: companiesName) List<CompanyDTO?>? companiesDTO,
    @JsonKey(name: emailsName) List<LabelObjectDTO?>? emailsDTO,
    @JsonKey(name: phonesName) List<LabelObjectDTO?>? phonesDTO,
    @JsonKey(name: imageUrlName) String? imageUrl,
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _ContactDTO;

  factory ContactDTO.fromDomain(Contact contact) {
    return ContactDTO(
      id: contact.id.value,
      nameDataDTO: NameDataDTO.fromDomain(contact.nameData),
      companiesDTO: contact.companies
          ?.where((comp) => comp.title != null || comp.name != null)
          .map((comp) => CompanyDTO.fromDomain(comp))
          .toList(),
      emailsDTO: (contact.labelObjects ?? const {})[Email]
          ?.where((email) => email.value != null)
          .map(
              (emailLabelObject) => LabelObjectDTO.fromDomain(emailLabelObject))
          .toList(),
      phonesDTO: (contact.labelObjects ?? const {})[Phone]
          ?.where((phone) => phone.value != null)
          .map((phoneLabelObject) {
        return LabelObjectDTO.fromDomain(phoneLabelObject);
      }).toList(),
      imageUrl: contact.contactImage?.url,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Contact toDomain() {
    return Contact(
      id: UniqueID.fromUniqueString(id!),
      nameData: nameDataDTO.toDomain(),
      companies: (companiesDTO == null || companiesDTO!.isEmpty)
          ? [Company.empty()]
          : companiesDTO!.map((comp) => comp!.toDomain()).toList(),
      labelObjects: {
        Email: (emailsDTO == null || emailsDTO!.isEmpty)
            ? [const Email()]
            : emailsDTO!
                .map((dto) => Email.fromLabelObject(dto!.toDomain()))
                .toList(),
        Phone: (phonesDTO == null || phonesDTO!.isEmpty)
            ? [const Phone()]
            : phonesDTO!
                .map((dto) => Phone.fromLabelObject(dto!.toDomain()))
                .toList(),
      },
    contactImage: imageUrl != null ? ContactImage(url: imageUrl) : null,
    );
  }

  factory ContactDTO.fromJson(Map<String, dynamic> json) =>
      _$ContactDTOFromJson(json);

  factory ContactDTO.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return ContactDTO.fromJson(doc.data()!).copyWith(id: doc.id);
  }
}

@freezed
class NameDataDTO with _$NameDataDTO {
  const NameDataDTO._();

  const factory NameDataDTO({
    String? name,
    String? surname,
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
class LabelObjectDTO with _$LabelObjectDTO {
  const LabelObjectDTO._();

  const factory LabelObjectDTO({
    String? name,
    String? label,
  }) = _LabelObjectDTO;

  factory LabelObjectDTO.fromDomain(ILabelObject labelObject) {
    return LabelObjectDTO(
      name: labelObject.value,
      label: labelObject.label,
    );
  }

  ILabelObject toDomain() {
    return LabelObject(
      value: name,
      label: label,
      otherLabels: ["TEST", "ERROR"],
    );
  }

  factory LabelObjectDTO.fromJson(Map<String, dynamic> json) =>
      _$LabelObjectDTOFromJson(json);
}

@freezed
class CompanyDTO with _$CompanyDTO {
  const CompanyDTO._();

  const factory CompanyDTO({
    String? name,
    String? title,
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
