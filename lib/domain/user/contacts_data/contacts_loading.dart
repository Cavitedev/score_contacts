import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_loading.freezed.dart';

@freezed
class ContactsLoading with _$ContactsLoading{
  const factory ContactsLoading.loadingContacts({int? amount}) = _LoadingContacts;

  const factory ContactsLoading.deletingContacts({required int amount}) = _DeletingContacts;
}
