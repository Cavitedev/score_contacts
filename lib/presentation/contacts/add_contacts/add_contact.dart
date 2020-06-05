import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/presentation/core/formatters/number_text_input_formatter.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_with_dropdown.dart';

class AddContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Create Contact",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              //TODO save contact to database
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.check),
            ),
          )
        ],
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              const OutlinedInputField(
                hintText: "Name",
                autoFocus: true,
                textCapitalization: TextCapitalization.words,
                prefixIcon: Icon(Icons.person_outline),
              ),
              const OutlinedInputField(
                  hintText: "Surname",
                  textCapitalization: TextCapitalization.words),
              const SizedBox(
                height: 20,
              ),
              TextfieldWithDropdown(
                items: const ["Mobile", "Home", "Work"],
                hintText: "Phone",
                prefixIcon: const Icon(Icons.phone),
                keyboardType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  NumberTextInputFormatter(context: context)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlinedInputField(
                hintText: "Company",
                prefixIcon: Icon(Icons.business),
              ),
              const OutlinedInputField(
                hintText: "Title",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
