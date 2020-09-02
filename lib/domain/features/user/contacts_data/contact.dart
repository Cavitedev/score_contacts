import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/names/name_data.dart';

part 'contact.freezed.dart';

@freezed
abstract class Contact implements _$Contact {
  const Contact._();

  const factory Contact({
    @required UniqueID id,
    @required NameData nameData,
    Map<Type, List<ILabelObject>> labelObjects,
    List<Company> companies,
  }) = _Contact;
}
