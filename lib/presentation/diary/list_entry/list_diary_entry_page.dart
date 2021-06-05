import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary/list_diary_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary_actor/list_diary_actor_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/domain/mention/i_mentionable.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';
import 'package:scorecontacts/presentation/core/widgets/circular_progress_indicator_scaffold.dart';
import 'package:scorecontacts/presentation/diary/list_entry/list_diary_entry_scaffold.dart';
import 'package:scorecontacts/presentation/diary/list_entry/widgets/entries_actor_overlay_progress_indicator.dart';

class ListDiaryEntryPage extends StatelessWidget {
  final IMentionable? mentionable;

  const ListDiaryEntryPage({this.mentionable});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ListDiaryBloc>(
            create: (context) =>
                getIt<ListDiaryBloc>()..add(ListDiaryEvent.watchAll(mentionable))),
        BlocProvider<ListDiaryActorBloc>(create: (_) => getIt<ListDiaryActorBloc>()),
      ],
      child: BlocListener<ListDiaryActorBloc, ListDiaryActorState>(
        listener: (context, state) => state.map(
          initial: (_) {},
          actionInProgress: (_) {},
          deleteSucessful: (state) => FlushbarHelper.createSuccess(
              duration: const Duration(seconds: 4),
              message: AppLocalization.of(context).translate(
                  state.amount != 1
                      ? "success_delete_entries_plural"
                      : "success_delete_entries_single",
                  args: [state.amount.toString()])).show(context),
          diaryFailure: (state) => FlushbarHelper.createError(
            duration: const Duration(seconds: 12),
            message: getDiaryFailureMessage(context, state.failure),
          ).show(context),
        ),
        child: BlocBuilder<ListDiaryBloc, ListDiaryState>(
            builder: (context, state) => state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) => const CircularProgressIndicatorScaffold(),
                  loadSuccess: (state) {
                    return Stack(
                      children: [
                        ListDiaryEntryScaffold(state.successValues),
                        EntriesActorOverlayProgressIndicator(),
                      ],
                    );
                  },
                  loadFailure: (state) => Scaffold(
                    body: ListyEntryFailure(
                      failure: state.failure,
                    ),
                  ),
                )),
      ),
    );
  }
}

class ListyEntryFailure extends StatelessWidget {
  final DiaryFailure failure;

  const ListyEntryFailure({
    required this.failure,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text('😱', style: TextStyle(fontSize: 50)),
          Text(getDiaryFailureMessage(context, failure)),
        ],
      ),
    );
  }
}
