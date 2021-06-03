import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/core/app_localization.dart';

part 'diary_loading.freezed.dart';

@freezed
class DiaryLoading with _$DiaryLoading {
  const factory DiaryLoading.deletingEntries(int amount) = _DeletingEntries;
}

String getDiaryLoadingMessage(BuildContext context, DiaryLoading loading) {
  return loading.map(
    deletingEntries: (l) => AppLocalization.of(context)
        .translate("deleting_entries", args: [l.amount.toString()]),
  );
}
