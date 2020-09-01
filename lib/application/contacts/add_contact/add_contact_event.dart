part of 'add_contact_bloc.dart';

@freezed
abstract class AddContactEvent with _$AddContactEvent {
  const factory AddContactEvent.labelObjectChanged(ILabelObject labelObject,
      int pos) = _LabelObjectChanged;

  const factory AddContactEvent.addLabelObject(
      ILabelObject labelObject) = _AddLabelObject;

  const factory AddContactEvent.removeLabelObject(Type labelObjectType,
      int pos) = _RemoveLabelObject;


}


// @immutable
// abstract class AddContactEvent {
//   const AddContactEvent();
// }
//
// class LabelObjectChangedEvent extends AddContactEvent {
//   final ILabelObject labelObject;
//   final int pos;
//
//   const LabelObjectChangedEvent({
//     @required this.labelObject,
//     this.pos = 0,
//   });
// }
//
// class AddLabelElement extends AddContactEvent {
//   final ILabelObject labelObject;
//
//   const AddLabelElement({@required this.labelObject});
// }
//
// class RemoveLabelElement extends AddContactEvent {
//   final int pos;
//   final Type labelObjectType;
//
//   const RemoveLabelElement({@required this.pos, @required this.labelObjectType})
//       : assert(pos >= 0);
// }
