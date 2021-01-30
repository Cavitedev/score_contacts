import 'package:flutter/material.dart';

class CircularProgressIndicatorScaffold extends StatelessWidget {

  const CircularProgressIndicatorScaffold();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center (
        child: CircularProgressIndicator(),
      ),
    );
  }

}
