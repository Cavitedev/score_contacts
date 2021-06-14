import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/alphabet_scroll_view/alphabet_scroll_view_data.dart';

enum LetterAlignment { left, right }

class AlphabetScrollView extends StatefulWidget {
  const AlphabetScrollView(
      {required Key key,
      required this.list,
      required this.selectedTextStyle,
      required this.unselectedTextStyle,
      this.itemHeight = 40,
      required this.itemBuilder})
      : super(key: key);

  final List<IInitialLetter> list;

  final double itemHeight;

  final TextStyle selectedTextStyle;

  final TextStyle unselectedTextStyle;

  final Widget Function(BuildContext, int) itemBuilder;

  @override
  _AlphabetScrollViewState createState() => _AlphabetScrollViewState();
}

class _AlphabetScrollViewState extends State<AlphabetScrollView> {
  late final ScrollController _scrollController;
  final _selectedIndexNotifier = ValueNotifier<int>(0);
  late final List<String> _filteredAlphabets;
  late final List<String> _elementsString;
  final List<int> _positionGivenLetterIndex = [];
  final _letterKey = GlobalKey();

  @override
  void initState() {
    _scrollController = ScrollController();

    final Iterable<String> lettersIterable =
        widget.list.map((e) => e.initialLetter().toLowerCase());

    _elementsString = lettersIterable.toList();

    _filteredAlphabets = lettersIterable.toSet().intersection(alphabet.toSet()).toList();

    int counter = 0;

    for (final String letter in alphabet) {
      final int letterAmount = lettersIterable.where((l) => l == letter).length;
      if (letterAmount > 0) {
        _positionGivenLetterIndex.add(counter);
        counter += letterAmount;
      }
    }
    _filteredAlphabets.add("#");
    _positionGivenLetterIndex.add(lettersIterable.length - 1);

    _scrollController.addListener(() {
      onListDrag(_scrollController.position.pixels);
    });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _selectedIndexNotifier.dispose();
    super.dispose();
  }

  void scrollToIndex(int index) {
    final scrollToPostion = min(widget.itemHeight * _positionGivenLetterIndex[index],
        _scrollController.position.maxScrollExtent);
    _scrollController.jumpTo(scrollToPostion);
  }

  void onVerticalDrag(Offset offset) {
    final int index = getCurrentIndex(offset.dy);
    if (_selectedIndexNotifier.value == index) return;
    if (index < 0 || index >= _filteredAlphabets.length) return;
    _selectedIndexNotifier.value = index;
    scrollToIndex(index);
  }

  int getCurrentIndex(double vPosition) {
    final double kAlphabetHeight = _letterKey.currentContext!.size!.height;
    final int index = vPosition ~/ kAlphabetHeight;
    return index;
  }

  void onListDrag(double vPosition) {
    final int itemIndex = max(vPosition ~/ widget.itemHeight, 0);
    int index =
        _filteredAlphabets.indexOf(_elementsString[itemIndex]);
    if (index == -1) {
      index = _filteredAlphabets.length - 1;
    }
    _selectedIndexNotifier.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            controller: _scrollController,
            itemCount: widget.list.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, x) {
              return ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: widget.itemHeight),
                  child: widget.itemBuilder(context, x));
            }),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            margin: const EdgeInsets.only(bottom: 70), // Space for fab
            child: GestureDetector(
              onVerticalDragStart: (z) => onVerticalDrag(z.localPosition),
              onVerticalDragUpdate: (z) => onVerticalDrag(z.localPosition),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ValueListenableBuilder<int>(
                    valueListenable: _selectedIndexNotifier,
                    builder: (context, int selected, Widget? child) {
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _filteredAlphabets.length,
                            (i) => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 12),
                              child: GestureDetector(
                                key: i == selected ? _letterKey : null,
                                onTap: () {
                                  _selectedIndexNotifier.value = i;
                                  scrollToIndex(i);
                                },
                                child: Text(
                                  _filteredAlphabets[i]
                                      .toUpperCase(),
                                  style: selected == i
                                      ? widget.selectedTextStyle
                                      : widget.unselectedTextStyle,
                                ),
                              ),
                            ),
                          ));
                    }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
