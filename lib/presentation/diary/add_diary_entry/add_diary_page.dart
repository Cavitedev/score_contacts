import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';
import 'package:scorecontacts/presentation/core/widgets/overlayed_circular_progess_indicator.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/add_diary_scaffold.dart';

class AddDiaryPage extends StatelessWidget {
  final DiaryEntry? diaryEntry;

  const AddDiaryPage({
    Key? key,
    this.diaryEntry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddDiaryEntryBloc>(
        create: (_) {
          return context.read<ContactWatcherBloc>().state.maybeMap(
                loadSuccess: (state) {
                  return getIt<AddDiaryEntryBloc>()
                    ..add(AddDiaryEntryEvent.initialize(
                      mentionableList:
                          state.stateValues.selectionContactList.toContacts(),
                      diaryEntry: diaryEntry,
                    ));
                },
                orElse: () {
                  return getIt<AddDiaryEntryBloc>();
                },
              );
        },
        child: BlocListener<AddDiaryEntryBloc, AddDiaryEntryState>(
            listenWhen: (previous, current) =>
                previous.savingOrFailureOption != current.savingOrFailureOption,
            listener: (context, state) {
              state.savingOrFailureOption?.fold(
                (failure) => FlushbarHelper.createError(
                  duration: const Duration(seconds: 6),
                  message: getDiaryFailureMessage(context, failure),
                ).show(context),
                (_) {
                  context.router.pop();
                },
              );
            },
            child: Stack(children: const [AddDiaryScaffold(), SavingProgressOverlay()])));
  }
}

class SavingProgressOverlay extends StatelessWidget {
  const SavingProgressOverlay();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDiaryEntryBloc, AddDiaryEntryState>(
      buildWhen: (previous, current) => previous.isSaving != current.isSaving,
      builder: (context, state) {
        return OverlayedCircularProgressIndicator(
          isSaving: state.isSaving,
          msg: AppLocalization.of(context).translate("saving"),
        );
      },
    );
  }
}
