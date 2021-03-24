import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OutlinedInputFieldsGrowableList extends StatefulWidget {
  final List<OutlinedInputField> fieldPrefabs;

  /// list index and later parameter index
  final List<List<String?>> writtenTexts;
  final List<String Function(String, int)> onChangesValidators;

  final Function? onAddWidget;
  final Function(int)? onRemoveWidget;

  const OutlinedInputFieldsGrowableList({
    Key? key,
    required this.fieldPrefabs,
    required this.writtenTexts,
    required this.onChangesValidators,
    this.onAddWidget,
    this.onRemoveWidget,
  }) : super(key: key);

  @override
  _OutlinedInputFieldsGrowableListState createState() =>
      _OutlinedInputFieldsGrowableListState();
}

class _OutlinedInputFieldsGrowableListState
    extends State<OutlinedInputFieldsGrowableList> {
  GlobalKey<AnimatedListState> animatedList = GlobalKey<AnimatedListState>();
  int? posInactiveWidget;
  String? objectToRemove;
  late int listCount;
  late List<List<FocusNode>> focusNodes;

  @override
  void initState() {
    super.initState();
    listCount = widget.writtenTexts.length;
    focusNodes = Iterable<List<FocusNode>>.generate(listCount, (i) {
      return Iterable<FocusNode>.generate(widget.fieldPrefabs.length, (i) {
        return FocusNode();
      }).toList();
    }).toList();
  }

  @override
  void dispose() {
    for (final nodes in focusNodes) {
      for (final node in nodes) {
        node.dispose();
      }
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _onActiveChange();
    _updateAnimatedList();

    return AnimatedList(
      key: animatedList,
      shrinkWrap: true,
      initialItemCount: listCount,
      primary: false,
      itemBuilder: (context, index, animation) {
        return _listTransitionBuild(
          animation,
          _buildField(listIndex: index),
        );
      },
    );
  }

  void _onActiveChange() {
    final int activeFields = widget.writtenTexts.where((texts) {
      return _isEmptyList(texts);
    }).length;

    if (activeFields >= widget.writtenTexts.length) {
      _addWidget();
    } else if (activeFields < widget.writtenTexts.length - 1) {
      posInactiveWidget =
          widget.writtenTexts.indexWhere((texts) => !_isEmptyList(texts));

      _removeWidget(pos: posInactiveWidget!);
    }
  }

  void _addWidget() {
      widget.onAddWidget?.call();
  }

  void _removeWidget({required int pos}) {
    // objectToRemove = widget.writtenTexts[pos];

      widget.onRemoveWidget?.call(pos);
  }

  void _updateAnimatedList() {
    while(widget.writtenTexts.length != listCount){

      if (widget.writtenTexts.length > listCount) {
        focusNodes
            .add(Iterable<FocusNode>.generate(widget.fieldPrefabs.length, (i) {
          return FocusNode();
        }).toList());
        animatedList.currentState!.insertItem(listCount);
        listCount++;
      } else if (widget.writtenTexts.isNotEmpty &&
          widget.writtenTexts.length < listCount) {
        final List<String?> messagesLeft = widget.writtenTexts[posInactiveWidget!];
        animatedList.currentState!.removeItem(posInactiveWidget!,
                (context, animation) {
              return _listTransitionBuild(
                  animation,
                  _buildField(
                      listIndex: posInactiveWidget!, writtenTexts: messagesLeft));
            }, duration: const Duration(milliseconds: 300));
        listCount--;

        focusNodes.removeAt(posInactiveWidget!);
      }

    }

  }

  Widget _buildField({required int listIndex, List<String?>? writtenTexts}) {
    return Column(
        children: Iterable<int>.generate(widget.fieldPrefabs.length)
            .map((parameterIndex) {
          return OutlinedInputField(
            writtenText: writtenTexts != null
                ? writtenTexts[parameterIndex]
                : widget.writtenTexts[listIndex][parameterIndex],
            onChangedValidator: (String str) {
              return widget.onChangesValidators[parameterIndex](str, listIndex);
            },
            focusNode: focusNodes[listIndex][parameterIndex],
            hintText: widget.fieldPrefabs[parameterIndex].hintText,
            helperText: widget.fieldPrefabs[parameterIndex].helperText,
            autoCorrect: widget.fieldPrefabs[parameterIndex].autoCorrect,
            textCapitalization:
            widget.fieldPrefabs[parameterIndex].textCapitalization,
            topPadding: widget.fieldPrefabs[parameterIndex].topPadding,
            prefixIcon: widget.fieldPrefabs[parameterIndex].prefixIcon,
            keyboardType: widget.fieldPrefabs[parameterIndex].keyboardType,
            borderRadius: widget.fieldPrefabs[parameterIndex].borderRadius,
            autoFocus: widget.fieldPrefabs[parameterIndex].autoFocus,
            inputFormatters: widget.fieldPrefabs[parameterIndex]
                .inputFormatters,
          );
          // widget.fieldPrefabs[parameterIndex].copyWith(
          //   writtenText: widget.writtenTexts[listIndex][parameterIndex],
          //   onChangedValidator: (String str) {
          //     return widget.onChangesValidators[parameterIndex](str, listIndex);
        }).toList());
  }

  bool _isEmptyList(List<String?> list) {
    return list.any((str) => str != null && str.isNotEmpty);
  }

  SizeTransition _listTransitionBuild(Animation<double> animation,
      Widget child) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
          curve: const Interval(0, 1, curve: Curves.decelerate),
          parent: animation),
      child: child,
    );
  }
}

class OutlinedInputField extends StatefulWidget {
  final String hintText;
  final bool autoFocus;
  final bool autoCorrect;
  final double topPadding;

  /// With Radius.circular(12) by default
  final BorderRadius borderRadius;

  /// override outline when it is set
  final OutlineInputBorder? outlineInputBorder;

  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon? prefixIcon;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final String? writtenText;
  final String helperText;

  /// return null to not show any helper
  final String Function(String)? onChangedValidator;

  const OutlinedInputField({
    Key? key,
    required this.hintText,
    this.autoCorrect = false,
    this.autoFocus = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.sentences,
    this.onChangedValidator,
    this.prefixIcon,
    this.focusNode,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.inputFormatters,
    this.writtenText,
    this.topPadding = 0,
    this.helperText = "",
    this.outlineInputBorder,
  }) : super(key: key);

  @override
  _OutlinedInputFieldState createState() => _OutlinedInputFieldState();


}

class _OutlinedInputFieldState extends State<OutlinedInputField> {
  bool hasText = false;
  late TextEditingController textEditingController;
  bool showHelperText = false;
  String? helpText;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.writtenText != null) {
      textEditingController.value = TextEditingValue(
          text: widget.writtenText!,
          selection:
          TextSelection.collapsed(offset: widget.writtenText!.length));

      hasText = widget.writtenText!.isNotEmpty;
    }
    return Container(
      padding: EdgeInsets.only(top: widget.topPadding),
      child: TextField(
        controller: textEditingController,
        onChanged: (str) {
          setState(() {
            hasText = str.isNotEmpty;
            helpText = widget.onChangedValidator == null
                ? null
                : widget.onChangedValidator!(str);
          });
        },
        focusNode: widget.focusNode,
        autocorrect: widget.autoCorrect,
        enableSuggestions: widget.autoCorrect,
        autofocus: widget.autoFocus,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        textCapitalization: widget.textCapitalization,
        showCursor: true,
        decoration: InputDecoration(
            labelText: widget.hintText,
            filled: true,
            fillColor: Theme
                .of(context)
                .textSelectionColor,
            helperText: (widget.helperText.isNotEmpty)
                ? widget.helperText
                : (helpText != null && helpText!.isNotEmpty) ? helpText : null,
            prefixIcon: widget.prefixIcon,
            suffixIcon: hasText
                ? InkWell(
              onTap: () {
                _clearText();
              },
              child: const Icon(Icons.delete),
            )
                : null,
            contentPadding: const EdgeInsets.only(top: 8, bottom: 8, left: 9),
            focusedBorder: widget.outlineInputBorder ??
                OutlineInputBorder(
                    borderRadius: widget.borderRadius,
                    borderSide: BorderSide(
                        color: Theme
                            .of(context)
                            .highlightColor, width: 2)),
            border: OutlineInputBorder(
              borderRadius: widget.borderRadius,
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  void _clearText() {
    textEditingController.clear();
    if (widget.focusNode != null) {
      widget.focusNode!.unfocus();
    }
    setState(() {
      hasText = false;
      if (widget.onChangedValidator != null) {
        helpText = widget.onChangedValidator!("");
      }
    });
  }
}
