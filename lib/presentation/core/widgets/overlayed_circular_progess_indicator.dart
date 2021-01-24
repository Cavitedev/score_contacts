
import 'package:flutter/material.dart';

class OverlayedCircularProgressIndicator extends StatelessWidget {

  final bool isSaving;

  const OverlayedCircularProgressIndicator({Key key, this.isSaving}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const CircularProgressIndicator();
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving
            ? Colors.black.withOpacity(0.8)
            : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: isSaving
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircularProgressIndicator(),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Loading something",
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        )
            : null,
      ),
    );
  }
}
