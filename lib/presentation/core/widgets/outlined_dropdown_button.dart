import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/alert_dialogue_cancel_ok.dart';

class OutlinedDropdownButton extends StatefulWidget {
  final List<String> items;

  const OutlinedDropdownButton({
    Key key,
    @required this.items,
  }) : super(key: key);

  @override
  _OutlinedDropdownButtonState createState() => _OutlinedDropdownButtonState(
        selected: items[0],
      );
}

class _OutlinedDropdownButtonState extends State<OutlinedDropdownButton> {
  String selected;
  String lastSelected;
  List<DropdownMenuItem<String>> _items;

  _OutlinedDropdownButtonState({@required this.selected});

  void _showDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialogueCancelOK(
        title: "Custom label name",
        hintText: "Label name",
        onCancel: () {
          setState(() {
            selected = lastSelected;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _items = widget.items
        .map((String item) => DropdownMenuItem(
              value: item,
              child: Text(item),
            ))
        .toList();
    _items.add(
      DropdownMenuItem(
        value: "Custom",
        child: Text("Custom"),
      ),
    );
    return Container(
      margin: const EdgeInsets.only(top: 0),
      padding: const EdgeInsets.only(left: 6),
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Theme.of(context).textSelectionColor,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        border: Border.all(color: Theme.of(context).highlightColor, width: 2),
      ),
      child: DropdownButton<String>(
          onChanged: (value) {
            if (value == "Custom") {
              _showDialogue(context);
            }
            setState(() {
              lastSelected = selected;
              selected = value;
            });
          },
          value: selected,
          elevation: 16,
          underline: Container(
            height: 0,
          ),
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          hint: Text("label"),
          items: _items),
    );
  }
}


