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
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.getUser()),
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
          theme: lightTheme,
          darkTheme: ThemeData.dark().copyWith(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color.fromRGBO(30, 30, 30, 1),
            dialogBackgroundColor: const Color.fromRGBO(35, 35, 35, 1),
            primaryColor: Colors.blue[800],
            accentColor: Colors.blueGrey[100],
            buttonColor: Colors.blue[900],
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.blue[900],
            ),
            popupMenuTheme: const PopupMenuThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              elevation: 4,
            ),
            dividerColor: const Color.fromRGBO(100, 100, 100, 1),
            highlightColor: Colors.blueAccent[700],
            focusColor: Colors.grey[600],
            textSelectionTheme: TextSelectionThemeData(
                cursorColor: Colors.blue[700],
                selectionColor: const Color.fromRGBO(80, 80, 120, 1),
                selectionHandleColor: Colors.blue[600]),

            accentIconTheme: IconThemeData(
              color: Colors.lightBlueAccent[700],
              size: 32

            ),
            disabledColor: Colors.grey[500],
            inputDecorationTheme: const InputDecorationTheme(
              border: InputBorder.none,
              fillColor: Color.fromRGBO(50, 50, 50, 1)
            ),

            iconTheme: const IconThemeData(color: Colors.grey, size: 32),
            textTheme: TextTheme(
                headline2: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                headline3: const TextStyle(fontSize: 26, color: Colors.white),
                headline4: const TextStyle(fontSize: 24, color: Colors.white),
                headline5: const TextStyle(fontSize: 16, color: Colors.white),
                headline6: const TextStyle(
                    fontSize: 14, letterSpacing: .5, color: Colors.white),
                subtitle1: const TextStyle(
                    fontSize: 16, letterSpacing: .5, color: Colors.white),
                subtitle2: const TextStyle(
                    fontSize: 14, letterSpacing: .5, color: Colors.white),
                caption: TextStyle(fontSize: 15, color: Colors.grey[500]),
                button: TextStyle(fontSize: 20, color: Colors.blue[50])),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),
      ),
    );
  }
}
