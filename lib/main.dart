import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
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
        BlocProvider(create: (context) => getIt<AppManagerCubit>()..init())
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
          darkTheme: darkTheme,
        ),
      ),
    );
  }
}
