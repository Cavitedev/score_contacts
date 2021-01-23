import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/auth/auth_event.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;
import 'package:scorecontacts/theme_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const GetUser()),
        ),
        BlocProvider(create: (context) => getIt<AppManagerCubit>()..getSystemRegion())
      ],
      child: BlocBuilder<AppManagerCubit, AppManagerState>(
        builder: (context, state) => MaterialApp(
          title: 'Contacts App',
          localizationsDelegates: const [
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale("en", "US"),
            Locale("en", "GB"),
            Locale("en", "ES"),
            Locale("es", "US"),
            Locale("es", "GB"),
            Locale("es", "ES"),
          ],

          builder: ExtendedNavigator.builder<r.Router>(
            router: r.Router(),
          ),
          themeMode: state.themeMode,
          theme: getIt<ThemeManager>().lightTheme,
          darkTheme: getIt<ThemeManager>().darkTheme,
        ),
      ),
    );
  }
}
