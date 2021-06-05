import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/list_diary_actor/list_diary_actor_bloc.dart';
import 'package:scorecontacts/domain/user/diary/diary_loading.dart';
import 'package:scorecontacts/presentation/core/widgets/overlayed_circular_progess_indicator.dart';

class EntriesActorOverlayProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListDiaryActorBloc, ListDiaryActorState>(
      buildWhen: (previous, current) =>
          _getLoading(previous) != _getLoading(current),
      builder: (context, state) {
        final DiaryLoading? loading = _getLoading(state);
        final bool isLoading = loading != null;
        final String msg = isLoading
            ? getDiaryLoadingMessage(context, loading)
            : "";
        return OverlayedCircularProgressIndicator(
          isSaving: isLoading,
          msg: msg,
        );
      },
    );
  }

  DiaryLoading? _getLoading(ListDiaryActorState current) => current.maybeWhen(
      actionInProgress: (loading) => loading, orElse: () => null);
}
