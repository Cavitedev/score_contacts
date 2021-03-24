import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/presentation/core/widgets/circular_progress_indicator_scaffold.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ContactsFailure failure;

  const CriticalFailureDisplay({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => state.maybeMap(
        unathenticated: (_) => const CircularProgressIndicatorScaffold(),
        orElse: () => Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('😱', style: TextStyle(fontSize: 50)),
                Text(getContactsFailureMessage(context, failure)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
