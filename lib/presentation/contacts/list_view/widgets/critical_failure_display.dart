import 'package:flutter/material.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ContactsFailure failure;

  const CriticalFailureDisplay({Key key, this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('😱', style: TextStyle(fontSize: 50)),
            Text(failure.map(
                insufficientPermissions: (_) => "Insufficient Permissions",
                notFound: (_) => "Deleted note not found",
                unexpected: (_) => "Unexpected error",
                platformError: (_) => "Platform error",
              deniedContactPermissions: (_) => "We need system permissions to read contacts, ask again",

              deniedPermanentlyContactPermissions: (_) => "Contact permissions are permanently denied. Allow them on app settings to use this function", )),
          ],
        ),
      ),
    );
  }
}
