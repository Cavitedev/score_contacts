import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_with_dropdown.dart';

class TextFieldsWithDropdowns extends StatefulWidget {
  final List<ILabelObject> labelObjects;
  final String hintText;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  final Function(int, String) onTextChanged;
  final Function(int, String) onLabelChanged;
  final List<TextInputFormatter> inputFormatters;
  final Function onAddWidget;
  final Function(int) onRemoveWidget;

  const TextFieldsWithDropdowns({
    Key key,
    @required this.labelObjects,
    @required this.hintText,
    this.autoCorrect = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.prefixIcon,
    this.onTextChanged,
    this.inputFormatters,
    this.onAddWidget,
    this.onRemoveWidget,
    this.onLabelChanged,
  }) : super(key: key);

  @override
  _TextFieldsWithDropdownsState createState() =>
      _TextFieldsWithDropdownsState();
}

class _TextFieldsWithDropdownsState extends State<TextFieldsWithDropdowns> {
  static const double itemHeight = 51;
  GlobalKey<AnimatedListState> animatedList = GlobalKey<AnimatedListState>();
  int listCount = 1;
  int posInactiveWidget = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _onActiveChange();
    _updateAnimatedList();

    return AnimatedList(
      key: animatedList,
      shrinkWrap: true,
      initialItemCount: 1,
      itemBuilder: (context, index, animation) {
        return _listTransitionBuild(animation, _buildField(pos: index));
      },
    );
  }

  void _onActiveChange() {
    final int activeFields = widget.labelObjects
        .where((labelObject) =>
    labelObject.value != null && labelObject.value.isNotEmpty)
        .length;
    if (activeFields >= widget.labelObjects.length) {
      _addWidget();
    } else if (activeFields < widget.labelObjects.length - 1) {
      posInactiveWidget = widget.labelObjects.indexWhere((labelObject) =>
      labelObject.value != null && labelObject.value.isEmpty);

      _removeWidget(pos: posInactiveWidget);
    }
  }

  void _addWidget() {
    if (widget.onAddWidget != null) {
      widget.onAddWidget();
    }
  }

  void _removeWidget({@required int pos}) {
    if (widget.onRemoveWidget != null) {
      widget.onRemoveWidget(pos);
    }
  }

  void _updateAnimatedList() {
    if (widget.labelObjects.length > listCount) {
      animatedList.currentState.insertItem(widget.labelObjects.length - 1);
      listCount++;
    } else if (widget.labelObjects.length < listCount) {
      animatedList.currentState.removeItem(posInactiveWidget,
              (context, animation) {
            return _listTransitionBuild(
                animation, const SizedBox(height: itemHeight,));
          }, duration: const Duration(milliseconds: 300));
      listCount--;
    }
  }

  SizeTransition _listTransitionBuild(Animation<double> animation,
      Widget child) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
          curve: Interval(0, 1, curve: Curves.decelerate), parent: animation),
      child: child,
    );
  }

  TextFieldWithDropdown _buildField({
    @required int pos,
  }) {
    return TextFieldWithDropdown(
      labelObject: widget.labelObjects[pos],
      hintText: widget.hintText,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      onChangedValidator: (str) {
        if (widget.onTextChanged != null) {
          widget.onTextChanged(pos, str);
        }
      },
      onLabelChanged: (str) {
        if (widget.onLabelChanged != null) {
          widget.onLabelChanged(pos, str);
        }
      },
      textCapitalization: widget.textCapitalization,
      autoCorrect: widget.autoCorrect,
      prefixIcon: widget.prefixIcon,
    );
  }
}
