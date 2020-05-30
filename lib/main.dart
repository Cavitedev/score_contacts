import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/sign_in/sign_in_page.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts App',
      theme: ThemeData.dark().copyWith (


        accentColor: Colors.grey[400],

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue[900],

        ),
        iconTheme: IconThemeData(color: Colors.grey),

        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 24,
          )
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInPage(),

    );
  }
}


