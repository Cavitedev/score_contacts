import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/add_diary_form.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class AddDiaryScaffold extends StatelessWidget {
  const AddDiaryScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: BlocBuilder<AddDiaryEntryBloc, AddDiaryEntryState>(
          buildWhen: (previous, current) =>
              previous.isEditting != current.isEditting,
          builder: (context, state) => Text(
            AppLocalization.of(context).translate(
                state.isEditting ? "edit_diary_entry" : "create_diary_entry"),
            style: Theme.of(context).textTheme.headline3,
          ),
        )),
         leading: IconButton(
          onPressed: () {
            context.router.popUntil((route) => route.settings.name == r.AddContactPageRoute.name);
            context.router.pop();
          },
          icon: const Icon(Icons.close),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context.read<AddDiaryEntryBloc>().add(const AddDiaryEntryEvent.save());
            },
          )
        ],


      ),
      body: const AddDiaryForm(),
    );
  }
}
