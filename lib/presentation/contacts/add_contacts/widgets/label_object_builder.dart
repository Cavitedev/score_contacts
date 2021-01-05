import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/presentation/core/widgets/text_fields_with_dropdowns.dart';

/// Only for addcontacts bloc
class LabelObjectBuilder extends StatelessWidget {
  final AddContactState state;
  final BuildContext context;
  final ILabelObject defaultLabelObject;
  final String hintText;
  final bool autoCorrect = false;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization = TextCapitalization.none;
  final Icon icon;
  final List<TextInputFormatter> inputFormatters;

  const LabelObjectBuilder(
      {Key key,
      @required this.state,
      @required this.context,
      @required this.defaultLabelObject,
      this.hintText,
      this.keyboardType,
      this.icon,
      this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldsWithDropdowns(
      labelObjects: state.contact.labelObjects[defaultLabelObject.runtimeType],
      hintText: hintText,
      prefixIcon: icon,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      autoCorrect: autoCorrect,
      inputFormatters: inputFormatters,
      onAddWidget: () => context
          .read<AddContactBloc>()
          .add(AddContactEvent.addLabelObject(defaultLabelObject)),
      onRemoveWidget: (pos) => context.read<AddContactBloc>().add(
          AddContactEvent.removeLabelObject(
              defaultLabelObject.runtimeType, pos)),
      onTextChanged: (i, str) => context.read<AddContactBloc>().add(
          AddContactEvent.labelObjectChanged(
              state.contact.labelObjects[defaultLabelObject.runtimeType][i]
                  .copyWith(value: str),
              i)),
      onLabelChanged: (i, value) => context.read<AddContactBloc>().add(
          AddContactEvent.labelObjectChanged(
              state.contact.labelObjects[defaultLabelObject.runtimeType][i]
                  .copyWith(label: value),
              i)),
    );
  }
}
