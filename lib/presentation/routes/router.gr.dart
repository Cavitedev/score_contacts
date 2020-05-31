// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:scorecontacts/presentation/auth/splash_page.dart';
import 'package:scorecontacts/presentation/contacts/list_view/contact_list.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact.dart';
import 'package:scorecontacts/presentation/auth/sign_in/sign_in_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const contactList = '/contact-list';
  static const addContact = '/add-contact';
  static const signInPage = '/sign-in-page';
  static const all = {
    splashPage,
    contactList,
    addContact,
    signInPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.contactList:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ContactList(),
          settings: settings,
        );
      case Routes.addContact:
        return MaterialPageRoute<dynamic>(
          builder: (context) => AddContact(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushContactList() => pushNamed(Routes.contactList);

  Future pushAddContact() => pushNamed(Routes.addContact);

  Future pushSignInPage() => pushNamed(Routes.signInPage);
}
