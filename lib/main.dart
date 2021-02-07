import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;
import 'package:scorecontacts/theme_manager.dart';

import 'core/app_localization.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.getUser()),
        ),
        BlocProvider(
            create: (context) => getIt<AppManagerCubit>()..init())
      ],
      child: BlocBuilder<AppManagerCubit, AppManagerState>(
        builder: (context, state) => MaterialApp(
          title: 'Contacts App',
          locale: state.languageCode == null
              ? null
              : Locale(state.languageCode, state.region),
          supportedLocales: const [
            Locale("en"),
            Locale("es"),
          ],
          localizationsDelegates: const [
            AppLocalization.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          builder: ExtendedNavigator.builder<r.Router>(
            router: r.Router(),
          ),
          themeMode: state.themeMode,
          theme: lightTheme,
          darkTheme: darkTheme,
        ),
      ),
    );
  }
}
