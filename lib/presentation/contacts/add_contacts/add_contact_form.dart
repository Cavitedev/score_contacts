import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/widgets/image_pick_up.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/widgets/label_object_builder.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/widgets/name_form_field.dart';
import 'package:scorecontacts/presentation/core/formatters/number_text_input_formatter.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

class AddContactForm extends StatelessWidget {
  const AddContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddContactBloc, AddContactState>(
      builder: (context, state) {
        final String? contactImageUrl = state.contact.contactImage?.url;
        return Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                ImagePickUp(
                  key: ValueKey(contactImageUrl),
                  backgroundUrl: contactImageUrl,
                  onImageReturned: (imageFile) {
                    if (imageFile != null) {
                      context
                          .read<AddContactBloc>()
                          .add(AddContactEvent.updateImage(imageFile));
                    } else {
                      FlushbarHelper.createError(
                              message: AppLocalization.of(context)
                                  .translate("error_load_image"),
                              duration: const Duration(seconds: 5))
                          .show(context);
                    }
                  },
                ),
                NameFormField(
                  state: state,
                ),
                OutlinedInputField(
                  hintText: AppLocalization.of(context).translate("surname"),
                  writtenText: state.contact.nameData.surnames,
                  textCapitalization: TextCapitalization.words,
                  onChangedValidator: (value) {
                    context.read<AddContactBloc>().add(
                        AddContactEvent.updateNameData(
                            state.contact.nameData.copyWith(surnames: value)));
                    return "";
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                LabelObjectBuilder(
                  context: context,
                  state: state,
                  defaultLabelObject: const Phone(),
                  hintText: AppLocalization.of(context).translate("phone"),
                  icon: const Icon(Icons.phone),
                  keyboardType: TextInputType.phone,
                  inputFormatters: <TextInputFormatter>[
                    PhoneTextFormatter(
                        countryCode:
                            context.read<AppManagerCubit>().state.region)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                LabelObjectBuilder(
                  context: context,
                  state: state,
                  defaultLabelObject: const Email(),
                  hintText: AppLocalization.of(context).translate("email"),
                  icon: const Icon(Icons.mail),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                CompaniesFields(state: state, context: context),
              ],
            ),
          ),
        );
      },
    );
  }
}


class CompaniesFields extends StatelessWidget {
  const CompaniesFields({
    Key? key,
    required this.state,
    required this.context,
  }) : super(key: key);

  final AddContactState state;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return OutlinedInputFieldsGrowableList(
      fieldPrefabs: [
        OutlinedInputField(
          hintText: AppLocalization.of(context).translate("company"),
          prefixIcon: const Icon(Icons.business),
          textCapitalization: TextCapitalization.words,
          topPadding: 3,
        ),
        OutlinedInputField(
          hintText: AppLocalization.of(context).translate("title"),
          textCapitalization: TextCapitalization.words,
        ),
      ],
      writtenTexts: state.contact.companies!
          .map((comp) => [comp.name, comp.title])
          .toList(),
      onChangesValidators: [
        (value, index) {
          context.read<AddContactBloc>().add(AddContactEvent.updateCompany(
              state.contact.companies![index].copyWith(name: value), index));
          return "";
        },
        (value, index) {
          context.read<AddContactBloc>().add(AddContactEvent.updateCompany(
              state.contact.companies![index].copyWith(title: value), index));
          return "";
        },
      ],
      onAddWidget: () => context.read<AddContactBloc>().add(
            const AddContactEvent.addCompany(),
          ),
      onRemoveWidget: (index) => context.read<AddContactBloc>().add(
            AddContactEvent.deleteCompany(index),
          ),
    );
  }
}
