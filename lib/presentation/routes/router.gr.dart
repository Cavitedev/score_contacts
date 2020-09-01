// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/sign_in/sign_in_page.dart';
import '../auth/splash_page.dart';
import '../contacts/add_contacts/add_contact_page.dart';
import '../contacts/list_view/contact_list.dart';

class Routes {
  static const String splashPage = '/';
  static const String contactList = '/contact-list';
  static const String addContactPage = '/add-contact-page';
  static const String signInPage = '/sign-in-page';
  static const all = <String>{
    splashPage,
    contactList,
    addContactPage,
    signInPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.contactList, page: ContactList),
    RouteDef(Routes.addContactPage, page: AddContactPage),
    RouteDef(Routes.signInPage, page: SignInPage),
  ];

  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    ContactList: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ContactList(),
        settings: data,
      );
    },
    AddContactPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddContactPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushContactList() => push<dynamic>(Routes.contactList);

  Future<dynamic> pushAddContactPage() => push<dynamic>(Routes.addContactPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);
}
