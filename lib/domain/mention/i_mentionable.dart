import 'package:scorecontacts/domain/core/unique_id.dart';

abstract class IMentionable{

  UniqueID get id;
  String getName();
  String? get imageLink;

}