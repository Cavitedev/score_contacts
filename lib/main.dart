import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/theme_manager.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

import 'core/app_localization.dart';
import 'core/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = r.Router();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.getUser()),
        ),
        BlocProvider(create: (context) => getIt<AppManagerCubit>()..init()),
        BlocProvider(create: (context) => getIt<ContactWatcherBloc>())
      ],
      child: BlocBuilder<AppManagerCubit, AppManagerState>(
        builder: (context, state) => MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          title: 'Contacts',
          locale: state.languageCode == null
              ? null
              : Locale(state.languageCode!, state.region),
          supportedLocales: const [
            Locale("en"),
            Locale("es"),
          ],
          localizationsDelegates: const [
            AppLocalization.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          themeMode: state.themeMode,
          theme: ThemeData.light().copyWith(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color.fromRGBO(240, 240, 240, 1),
  dialogBackgroundColor: const Color.fromRGBO(235, 235, 235, 1),
  primaryColor: Colors.blue[800],
  primaryColorDark: Colors.grey[900],
  primaryColorLight: Colors.white,
  accentColor: Colors.blueGrey[100],
  backgroundColor: Colors.blueGrey[500],
  buttonColor: const Color.fromRGBO(250, 250, 250, 1),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue[900],
  ),
  popupMenuTheme: const PopupMenuThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    elevation: 4,
  ),
  dividerColor: const Color.fromRGBO(50, 50, 50, 1),
  highlightColor: Colors.blueAccent[700],
  focusColor: Colors.blueAccent[700],
  textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.blue[700],
      selectionColor: const Color.fromRGBO(80, 80, 120, 1),
      selectionHandleColor: Colors.blue[600]),
  disabledColor: Colors.grey[500],
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Colors.white,
    border: InputBorder.none,
  ),
  iconTheme: const IconThemeData(color: Colors.grey, size: 32),
  accentIconTheme: IconThemeData(color: Colors.lightBlueAccent[700], size: 32),
  textTheme: TextTheme(
      headline1: const TextStyle(fontSize: 45, letterSpacing: 1, fontWeight: FontWeight.w400,  color: Colors.black),
      headline2: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
      headline3: const TextStyle(fontSize: 24, color: Colors.white),
      headline4: const TextStyle(fontSize: 20, color: Colors.black),
      headline5: const TextStyle(fontSize: 16, color: Colors.black),
      headline6: const TextStyle(fontSize: 14, letterSpacing: .5, color: Colors.black),
      subtitle1: const TextStyle(fontSize: 16, letterSpacing: .5, color: Colors.black),
      subtitle2: const TextStyle(fontSize: 14, letterSpacing: .5, color: Colors.black),
      caption: TextStyle(fontSize: 15, color: Colors.grey[700]),
      button: TextStyle(fontSize: 20, color: Colors.blueAccent[400])),
  visualDensity: VisualDensity.adaptivePlatformDensity,
),
          darkTheme: darkTheme,
        ),
      ),
    );
  }
}
