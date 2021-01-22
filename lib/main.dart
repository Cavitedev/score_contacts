import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/auth/auth_event.dart';
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

          themeMode: getIt<ThemeManager>().getCurrentTheme(),
          theme: getIt<ThemeManager>().lightTheme,
          darkTheme: getIt<ThemeManager>().darkTheme,
      ),
    );
  }
}
