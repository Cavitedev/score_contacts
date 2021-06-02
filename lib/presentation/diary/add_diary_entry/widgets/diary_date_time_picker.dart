import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

class DiaryDateTimePicker extends StatelessWidget {
  const DiaryDateTimePicker();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Constants.extendedPadding.toDouble()),
      child: BlocBuilder<AddDiaryEntryBloc, AddDiaryEntryState>(
          builder: (context, state) {
        return Column(
          children: [
            // Row(
            //   children: [
            //     Icon(Icons.access_time),
            //     SizedBox(
            //       width: Constants.normalPadding.toDouble(),
            //     ),
            //     Text("All day"),
            //     Spacer(),
            //     Switch(value: false, onChanged: (value) {}),
            //   ],
            // ),
            Row(
              children: [
                SizedBox(
                  width: (Theme.of(context).iconTheme.size ?? 32) +
                      Constants.normalPadding,
                ),
                InkWell(
                  child: Padding(
                    padding: EdgeInsets.all(Constants.smallPadding),
                    child: Text(state.entryField.entry.date(datePos: DatePos.Start)),
                  ),
                  onTap: () async {
                    final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.utc(2000),
                      lastDate: DateTime.now(),
                    );
                    if (dateTime != null) {
                      context
                          .read<AddDiaryEntryBloc>()
                          .add(AddDiaryEntryEvent.changeDate(dateTime, datePos: DatePos.Start));
                    }
                  },
                ),
                // Spacer(),
                // Text(state.entryField.entry.hour),
                // SizedBox(width: 12)
              ],
            )
          ],
        );
      }),
    );
  }
}
