import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/auth/auth_event.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
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
          builder: ExtendedNavigator.builder<r.Router>(
            router: r.Router(),
          ),
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color.fromRGBO(30, 30, 30, 1),
            dialogBackgroundColor: const Color.fromRGBO(35, 35, 35, 1),
            primaryColor: Colors.blue[800],
            accentColor: Colors.grey[400],
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.blue[900],
            ),
            popupMenuTheme: const PopupMenuThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              elevation: 4,
            ),
            dividerColor: const Color.fromRGBO(20, 20, 20, 1),
            highlightColor: Colors.blueAccent[700],
            focusColor: Colors.blueAccent[100],
            cursorColor: Colors.blue[700],
            textSelectionColor: const Color.fromRGBO(40, 40, 40, 1),
            textSelectionHandleColor: Colors.blue[600],
            disabledColor: Colors.grey[500],
            inputDecorationTheme: const InputDecorationTheme(
              border: InputBorder.none,
            ),
            iconTheme: const IconThemeData(color: Colors.grey, size: 32),
            textTheme: TextTheme(
                headline5: const TextStyle(
                  fontSize: 22,
                ),
                headline6: const TextStyle(fontSize: 20, letterSpacing: .5),
                subtitle1: const TextStyle(fontSize: 18, letterSpacing: .5),
                subtitle2: const TextStyle(
                  fontSize: 18,
                  letterSpacing: .5,
                  fontWeight: FontWeight.w400,
                ),
                caption: TextStyle(fontSize: 15, color: Colors.grey[400]),
                button: TextStyle(fontSize: 20, color: Colors.blueAccent[100])),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),
      );
    }
}
