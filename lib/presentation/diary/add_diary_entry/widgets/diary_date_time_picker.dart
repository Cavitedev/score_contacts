import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

class DiaryDateTimePicker extends StatelessWidget {
  const DiaryDateTimePicker();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constants.extendedPadding.toDouble()),
      child:
          BlocBuilder<AddDiaryEntryBloc, AddDiaryEntryState>(builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                const Icon(Icons.access_time),
                SizedBox(
                  width: Constants.normalPadding.toDouble(),
                ),
                Text(AppLocalization.of(context).translate("all_day")),
                const Spacer(),
                Switch(
                    value: state.entryField.entry.isAllDay(),
                    onChanged: (isAllDay) {
                      context
                          .read<AddDiaryEntryBloc>()
                          .add(AddDiaryEntryEvent.changeAllDay(isAllDay));
                    }),
              ],
            ),
            DateRowPicker(
              diaryEntry: state.entryField.entry,
              datePos: DatePos.Start,
            ),
            DateRowPicker(
              diaryEntry: state.entryField.entry,
              datePos: DatePos.End,
            ),
          ],
        );
      }),
    );
  }
}

class DateRowPicker extends StatelessWidget {
  final DatePos datePos;
  final DiaryEntry diaryEntry;

  const DateRowPicker({
    required this.datePos,
    required this.diaryEntry,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children: [
          SizedBox(
            width: Theme.of(context).iconTheme.size ?? 32,
          ),
          InkWell(
            onTap: () async {
              final DateTime? dateTime = await showDatePicker(
                context: context,
                initialDate: diaryEntry.dateTime(datePos: datePos),
                firstDate: datePos == DatePos.Start
                    ? DateTime.utc(2000)
                    : diaryEntry.dateTime(datePos: DatePos.Start),
                lastDate: datePos == DatePos.Start
                    ? diaryEntry.dateTime(datePos: DatePos.End)
                    : DateTime.now(),
              );
              if (dateTime != null) {
                context
                    .read<AddDiaryEntryBloc>()
                    .add(AddDiaryEntryEvent.changeDate(dateTime, datePos: datePos));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(Constants.smallPadding),
              child: Text(
                diaryEntry.date(datePos: datePos),
              ),
            ),
          ),
          const Spacer(),
          if (!diaryEntry.isAllDay())
            InkWell(
              onTap: () async {
                final TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime:
                      TimeOfDay.fromDateTime(diaryEntry.dateTime(datePos: datePos)),
                );
                if (time != null) {
                  context
                      .read<AddDiaryEntryBloc>()
                      .add(AddDiaryEntryEvent.changeTime(time, datePos: datePos));
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(Constants.smallPadding),
                child: Text(
                  diaryEntry.hour(datePos: datePos),
                  style: _getTextStyle(),
                ),
              ),
            ),
          const SizedBox(width: 4)
        ],
      ),
    );
  }

  TextStyle? _getTextStyle() =>
      diaryEntry.areDatesValid() ? null : TextStyle(color: Colors.redAccent[100]);
}
