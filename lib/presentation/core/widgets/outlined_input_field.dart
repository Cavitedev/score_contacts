import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/widgets/outlined_input_field_add_contact_listener.dart';

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
    while (widget.writtenTexts.length != listCount) {
      if (widget.writtenTexts.length > listCount) {
        focusNodes
            .add(Iterable<FocusNode>.generate(widget.fieldPrefabs.length, (i) {
          return FocusNode();
        }).toList());
        animatedList.currentState!.insertItem(listCount);
        listCount++;
      } else if (widget.writtenTexts.isNotEmpty &&
          widget.writtenTexts.length < listCount) {
        final List<String?> messagesLeft =
            widget.writtenTexts[posInactiveWidget!];
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
      return OutlinedInputFieldAddContactListener(
          onEditChanged: () =>
              (writtenTexts != null
                  ? writtenTexts[parameterIndex]
                  : widget.writtenTexts[listIndex][parameterIndex]) ??
              "",
          outlinedInputField: widget.fieldPrefabs[parameterIndex].copyWith(
            focusNode: focusNodes[listIndex][parameterIndex],
            onChangedValidator: (String str) {
              return widget.onChangesValidators[parameterIndex](str, listIndex);
            },
          ));
    }).toList());
  }

  bool _isEmptyList(List<String?> list) {
    return list.any((str) => str != null && str.isNotEmpty);
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
  final int? maxLines;

  /// With Radius.circular(12) by default
  final BorderRadius borderRadius;

  /// override outline when it is set
  final OutlineInputBorder? outlineInputBorder;

  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon? prefixIcon;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final String helperText;

  final TextEditingController? textEditingController;

  /// return null to not show any helper
  final String Function(String)? onChangedValidator;

  const OutlinedInputField({
    Key? key,
    this.hintText = "",
    this.autoCorrect = false,
    this.autoFocus = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.sentences,
    this.onChangedValidator,
    this.prefixIcon,
    this.focusNode,
    this.borderRadius = Constants.textFieldBorderRadious,
    this.inputFormatters,
    this.topPadding = 0,
    this.helperText = "",
    this.outlineInputBorder,
    this.textEditingController,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  _OutlinedInputFieldState createState() => _OutlinedInputFieldState();

  OutlinedInputField copyWith({
    final String? hintText,
    final bool? autoFocus,
    final bool? autoCorrect,
    final double? topPadding,
    final BorderRadius? borderRadius,
    final OutlineInputBorder? outlineInputBorder,
    final TextInputType? keyboardType,
    final TextCapitalization? textCapitalization,
    final Icon? prefixIcon,
    final FocusNode? focusNode,
    final List<TextInputFormatter>? inputFormatters,
    final String? helperText,
    final TextEditingController? textEditingController,
    final String Function(String)? onChangedValidator,
  }) {
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
      helperText: helperText ?? this.helperText,
      textEditingController:
          textEditingController ?? this.textEditingController,
      onChangedValidator: onChangedValidator ?? this.onChangedValidator,
    );
  }
}

class _OutlinedInputFieldState extends State<OutlinedInputField> {
  bool hasText = false;
  late TextEditingController textEditingController;
  String? helpText;

  @override
  void initState() {
    if (widget.textEditingController != null) {
      textEditingController = widget.textEditingController!;
    } else {
      textEditingController = TextEditingController();
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
    return Container(
      padding: EdgeInsets.only(top: widget.topPadding),
      child: TextField(
        controller: textEditingController,
        onChanged: (str) {
          setState(() {
            hasText = str.isNotEmpty;
            helpText = widget.onChangedValidator?.call(str);
          });
        },
        maxLines: widget.maxLines,
        focusNode: widget.focusNode,
        autocorrect: widget.autoCorrect,
        enableSuggestions: widget.autoCorrect,
        autofocus: widget.autoFocus,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        textCapitalization: widget.textCapitalization,
        showCursor: true,

        scrollPhysics: const BouncingScrollPhysics(),
        decoration: InputDecoration(
            labelText: widget.hintText,
            filled: true,
            helperText: (widget.helperText.isNotEmpty)
                ? widget.helperText
                : (helpText != null && helpText!.isNotEmpty)
                    ? helpText
                    : null,
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
                        color: Theme.of(context).highlightColor, width: 2)),
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
      helpText = widget.onChangedValidator?.call("");
    });
  }
}
