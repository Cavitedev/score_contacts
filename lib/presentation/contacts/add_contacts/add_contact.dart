import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_dropdown_button.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

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
              OutlinedInputField(
                hintText: "Name",
                autoFocus: true,
                textCapitalization: TextCapitalization.words,
                prefixIcon: const Icon(Icons.person_outline),
              ),
              OutlinedInputField(
                  hintText: "Surname",
                  textCapitalization: TextCapitalization.words),
              const SizedBox(
                height: 20,
              ),
              OutlinedInputField(
                hintText: "Phone",
                prefixIcon: const Icon(Icons.phone),
              ),
              const OutlinedDropdownButton(
                items: ["uno", "dos", "tres"],

              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedInputField(
                hintText: "Company",
                prefixIcon: const Icon(Icons.business),
              ),
              OutlinedInputField(
                hintText: "Title",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
