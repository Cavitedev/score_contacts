import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/diary/add_diary_entry/add_diary_entry_bloc.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/presentation/core/widgets/avatar/custom_circle_avatar.dart';

class SelectMentionWidget extends StatelessWidget {
  final ScrollController scrollController;

  const SelectMentionWidget({
    required this.scrollController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddDiaryEntryBloc, AddDiaryEntryState>(
      listenWhen: (p, n) =>
          p.entryField.selectingMention != n.entryField.selectingMention &&
          n.entryField.selectingMention != null,
      listener: (context, state) {
        scrollController.animateTo(
          _scrollPosFromText(
            context,
            state.entryField.entry.text,
            state.entryField.selectingMention!.endPos,
          ),
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      },
      buildWhen: (p, n) => p.entryField.selectingMention != n.entryField.selectingMention,
      builder: (context, state) {
        if (!_isMentionListDrawed(state)) {
          return const SizedBox();
        }
        return Positioned(
          bottom: 0,
          left: 12,
          right: 12,
          child: Column(
            children: state.entryField.selectingMention!.candidates
                .map((candidate) => Material(
                      child: ListTile(
                        title: Text(candidate.getName()),
                        tileColor: Colors.grey[600],
                        leading: CustomCircleAvatar(
                          name: candidate.getName(),
                          image: candidate.imageLink,
                          child: const Icon(Icons.person),
                        ),
                        onTap: () {
                          context.read<AddDiaryEntryBloc>().add(
                              AddDiaryEntryEvent.onSelectMention(
                                  iMentionable: candidate));
                        },
                      ),
                    ))
                .toList(),
          ),
        );
      },
    );
  }

  // Complex code done by trial and error to get and approximation of where to scroll
  // given the text and some data
  double _scrollPosFromText(BuildContext context, String text, int pos) {
    final List<String> textListLines = text.substring(0, pos).split("\n");
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    final double textSize = Theme.of(context).textTheme.subtitle1?.fontSize ?? 16;
    final double width = MediaQuery.of(context).size.width;
    final int charactersPerLine =
        (width - Constants.normalPadding * 2) * 2.1 ~/ (textSize * textScaleFactor);
    final int lines = textListLines.fold(
        0,
        (previousValue, element) =>
            previousValue + 1 + (element.length - 1) ~/ charactersPerLine);
    final double verticalSize = lines * textScaleFactor * textSize;
    return verticalSize;
  }
}

class EmptySpaceForScrolling extends StatelessWidget {
  const EmptySpaceForScrolling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDiaryEntryBloc, AddDiaryEntryState>(
      buildWhen: (p, n) => p.entryField.selectingMention != n.entryField.selectingMention,
      builder: (context, state) {
        return SizedBox(
          height: _isMentionListDrawed(state) ? 250 : 0,
        );
      },
    );
  }
}

bool _isMentionListDrawed(AddDiaryEntryState state) =>
    state.entryField.selectingMention != null;
