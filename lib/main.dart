import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
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
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
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
                scaffoldBackgroundColor: const Color.fromRGBO(30, 30, 30, 1),
                dialogBackgroundColor: const Color.fromRGBO(35, 35, 35, 1),
                accentColor: Colors.grey[400],
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.blue[900],
                ),
                highlightColor: Colors.blueAccent[700],
                focusColor: Colors.blueAccent[100],
                cursorColor: Colors.blue[700],
                textSelectionColor: const Color.fromRGBO(40, 40, 40, 1),
                textSelectionHandleColor: Colors.blue[600],
                disabledColor: Colors.grey[500],
                inputDecorationTheme: InputDecorationTheme(
                  border: InputBorder.none,
                ),
                iconTheme: IconThemeData(color: Colors.grey, size: 32),
                textTheme: TextTheme(
                    headline5: const TextStyle(
                      fontSize: 24,
                    ),
                    headline6: const TextStyle(fontSize: 20, letterSpacing: .5),
                    subtitle1: const TextStyle(fontSize: 20, letterSpacing: .5),
                    button:
                        TextStyle(fontSize: 20, color: Colors.blueAccent[100])),
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
            ),
          );
        }

        return Container(child: const CircularProgressIndicator());
      },
    );
  }
}
