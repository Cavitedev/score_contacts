import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_form_input_field.dart';

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
              OutlinedInputField(
                hintText: "Name",
                autoFocus: true,
                onChangedValidator: (_) {
                  return null;
                },
              ),
              OutlinedInputField(
                hintText: "Surname",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


