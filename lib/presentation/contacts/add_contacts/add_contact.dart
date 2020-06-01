import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Create Contact",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              //TODO save contact to database
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.check),
            ),
          )
        ],
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: <Widget>[
              TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Name",
                    filled: true,
                    fillColor: Theme.of(context).textSelectionColor,
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(
                            color: Theme.of(context).highlightColor, width: 2)),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Name",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Theme.of(context).highlightColor, width: 2)),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
