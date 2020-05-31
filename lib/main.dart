import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/auth/auth_event.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const GetUser()),
        ),
      ],
      child: MaterialApp(
        title: 'Contacts App',
        builder: ExtendedNavigator(
          router: Router(),
        ),
        theme: ThemeData.dark().copyWith(
          accentColor: Colors.grey[400],
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
          ),
          iconTheme: IconThemeData(color: Colors.grey, size: 32),
          textTheme: TextTheme(
            headline5: TextStyle(
              fontSize: 24,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
