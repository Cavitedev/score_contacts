import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/widgets/focus_cubit.dart';

class OutlinedInputFieldsGrowableList extends StatefulWidget {
  final List<OutlinedInputField> fieldPrefabs;

  /// list index and later parameter index
  final List<List<String>> writtenTexts;
  final List<String Function(String, int)> onChangesValidators;

  final Function onAddWidget;
  final Function(int) onRemoveWidget;

  const OutlinedInputFieldsGrowableList({
    Key key,
    @required this.fieldPrefabs,
    @required this.writtenTexts,
    @required this.onChangesValidators,
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
  int posInactiveWidget;
  String objectToRemove;
  int listCount;
  List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    listCount = widget.writtenTexts.length ?? 1;
    focusNodes = <FocusNode>[FocusNode()];
    for (int i = 1; i < listCount; i++) {
      focusNodes.add(FocusNode());
    }
  }

  @override
  void dispose() {
    for (final node in focusNodes) {
      node.dispose();
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
      return texts.any((str) => str != null && str.isNotEmpty);
    }).length;

    if (activeFields >= widget.writtenTexts.length) {
      _addWidget();
    } else if (activeFields < widget.writtenTexts.length - 1) {
      posInactiveWidget = widget.writtenTexts
          .indexWhere((value) => value != null && value.isEmpty);

      _removeWidget(pos: posInactiveWidget);
    }
  }

  void _addWidget() {
    if (widget.onAddWidget != null) {
      widget.onAddWidget();
    }
  }

  void _removeWidget({@required int pos}) {
    // objectToRemove = widget.writtenTexts[pos];

    if (widget.onRemoveWidget != null) {
      widget.onRemoveWidget(pos);
    }
  }

  void _updateAnimatedList() {
    if (widget.writtenTexts.length > listCount) {
      focusNodes.add(FocusNode());
      animatedList.currentState.insertItem(listCount);
      listCount++;
    } else if (widget.writtenTexts.length < listCount) {
      animatedList.currentState.removeItem(posInactiveWidget,
          (context, animation) {
        return _listTransitionBuild(
            animation, _buildField(listIndex: posInactiveWidget));
      }, duration: const Duration(milliseconds: 300));
      listCount--;
      focusNodes.removeAt(posInactiveWidget);
    }
  }

  Widget _buildField({@required int listIndex}) {
    return Column(
        children: Iterable<int>.generate(widget.fieldPrefabs.length)
            .map((parameterIndex) {
      return OutlinedInputField(
        writtenText: widget.writtenTexts[listIndex][parameterIndex],
        onChangedValidator: (String str) {
          return widget.onChangesValidators[parameterIndex](str, listIndex);
        },
        focusNode: focusNodes[listIndex],
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
        inputFormatters: widget.fieldPrefabs[parameterIndex].inputFormatters,
      );
      // widget.fieldPrefabs[parameterIndex].copyWith(
      //   writtenText: widget.writtenTexts[listIndex][parameterIndex],
      //   onChangedValidator: (String str) {
      //     return widget.onChangesValidators[parameterIndex](str, listIndex);
    }).toList());
  }

  SizeTransition _listTransitionBuild(
      Animation<double> animation, Widget child) {
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
  final OutlineInputBorder outlineInputBorder;

  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  final FocusNode focusNode;
  final List<TextInputFormatter> inputFormatters;
  final String writtenText;
  final String helperText;

  /// return null to not show any helper
  final String Function(String) onChangedValidator;

  final bool useFocusCubit;

  const OutlinedInputField({
    Key key,
    @required this.hintText,
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
    this.useFocusCubit = false,
  }) : super(key: key);

  @override
  _OutlinedInputFieldState createState() => _OutlinedInputFieldState();

//#region copyWith
  OutlinedInputField copyWith({
    String hintText,
    bool autoFocus,
    bool autoCorrect,
    double topPadding,
    BorderRadius borderRadius,
    OutlineInputBorder outlineInputBorder,
    TextInputType keyboardType,
    TextCapitalization textCapitalization,
    Icon prefixIcon,
    FocusNode focusNode,
    List<TextInputFormatter> inputFormatters,
    String writtenText,
    String helperText,
    String Function(String) onChangedValidator,
    bool useFocusCubit,
  }) {
    if ((hintText == null || identical(hintText, this.hintText)) &&
        (autoFocus == null || identical(autoFocus, this.autoFocus)) &&
        (autoCorrect == null || identical(autoCorrect, this.autoCorrect)) &&
        (topPadding == null || identical(topPadding, this.topPadding)) &&
        (borderRadius == null || identical(borderRadius, this.borderRadius)) &&
        (outlineInputBorder == null ||
            identical(outlineInputBorder, this.outlineInputBorder)) &&
        (keyboardType == null || identical(keyboardType, this.keyboardType)) &&
        (textCapitalization == null ||
            identical(textCapitalization, this.textCapitalization)) &&
        (prefixIcon == null || identical(prefixIcon, this.prefixIcon)) &&
        (focusNode == null || identical(focusNode, this.focusNode)) &&
        (inputFormatters == null ||
            identical(inputFormatters, this.inputFormatters)) &&
        (writtenText == null || identical(writtenText, this.writtenText)) &&
        (helperText == null || identical(helperText, this.helperText)) &&
        (onChangedValidator == null ||
            identical(onChangedValidator, this.onChangedValidator)) &&
        (useFocusCubit == null ||
            identical(useFocusCubit, this.useFocusCubit))) {
      return this;
    }

    return OutlinedInputField(
      hintText: hintText ?? this.hintText,
      autoFocus: autoFocus ?? this.autoFocus,
      autoCorrect: autoCorrect ?? this.autoCorrect,
      topPadding: topPadding ?? this.topPadding,
      borderRadius: borderRadius ?? this.borderRadius,
      outlineInputBorder: outlineInputBorder ?? this.outlineInputBorder,
      keyboardType: keyboardType ?? this.keyboardType,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      prefixIcon: prefixIcon ?? this.prefixIcon,
      focusNode: focusNode ?? this.focusNode,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      writtenText: writtenText ?? this.writtenText,
      helperText: helperText ?? this.helperText,
      onChangedValidator: onChangedValidator ?? this.onChangedValidator,
      useFocusCubit: useFocusCubit ?? this.useFocusCubit,
    );
  }

//#endregion
}

class _OutlinedInputFieldState extends State<OutlinedInputField> {
  bool hasText = false;
  TextEditingController textEditingController;
  bool showHelperText = false;
  String helpText;

  @override
  void initState() {
    textEditingController = TextEditingController();
    if (widget.useFocusCubit) {
      widget.focusNode?.addListener(() {
        context.bloc<FocusCubit>().switchFocus();
      });
    }
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
          text: widget.writtenText,
          selection:
          TextSelection.collapsed(offset: widget.writtenText.length));

      hasText = widget.writtenText.isNotEmpty;
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
                : widget.onChangedValidator(str);
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
                : (helpText != null && helpText.isNotEmpty) ? helpText : null,
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
      widget.focusNode.unfocus();
    }
    setState(() {
      hasText = false;
      if (widget.onChangedValidator != null) {
        helpText = widget.onChangedValidator("");
      }
    });
  }
}
