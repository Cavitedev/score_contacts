import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

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
  List<DropdownMenuItem<String>> _items;

  _OutlinedDropdownButtonState({@required this.selected});

  @override
  Widget build(BuildContext context) {
    _items = widget.items
        .map((String item) => DropdownMenuItem(
              value: item,
              child: Text(item),
            ))
        .toList();
    _items.add(DropdownMenuItem(
      value: "",
      child: Text("Custom"),
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("Custom label name"),
                  content: OutlinedInputField(
                    hintText: "Label name",
                  ),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text("Cancel"),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("OK"),
                    )
                  ],
                ),
            barrierDismissible: false);
      },
    ));
    return DropdownButton<String>(
        onChanged: (value) {
          setState(() {
            selected = value;
          });
        },
        value: selected,
        elevation: 16,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        hint: Text("label"),
        items: _items);
  }
}
