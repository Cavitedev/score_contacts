// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i7;

import '../../domain/user/contacts_data/contact.dart' as _i8;
import '../auth/sign_in/sign_in_page.dart' as _i5;
import '../auth/splash_page.dart' as _i2;
import '../contacts/add_contacts/add_contact_page.dart' as _i4;
import '../contacts/list_view/contact_list.dart' as _i3;
import '../settings/settings_page.dart' as _i6;

class Router extends _i1.RootStackRouter {
  Router();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SplashPage());
    },
    ContactListRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.ContactList());
    },
    AddContactPageRoute.name: (entry) {
      var args = entry.routeData.argsAs<AddContactPageRouteArgs>(
          orElse: () => AddContactPageRouteArgs());
      return _i1.MaterialPageX(
          entry: entry,
          child: _i4.AddContactPage(
              key: args.key,
              contact: args.contact,
              isEdditing: args.isEdditing));
    },
    SignInPageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.SignInPage());
    },
    SettingsPageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.SettingsPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(ContactListRoute.name, path: '/contact-list'),
        _i1.RouteConfig(AddContactPageRoute.name, path: '/add-contact-page'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SettingsPageRoute.name, path: '/settings-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class ContactListRoute extends _i1.PageRouteInfo {
  const ContactListRoute() : super(name, path: '/contact-list');

  static const String name = 'ContactListRoute';
}

class AddContactPageRoute extends _i1.PageRouteInfo<AddContactPageRouteArgs> {
  AddContactPageRoute(
      {_i7.Key? key, _i8.Contact? contact, bool isEdditing = false})
      : super(name,
            path: '/add-contact-page',
            args: AddContactPageRouteArgs(
                key: key, contact: contact, isEdditing: isEdditing));

  static const String name = 'AddContactPageRoute';
}

class AddContactPageRouteArgs {
  const AddContactPageRouteArgs(
      {this.key, this.contact, this.isEdditing = false});

  final _i7.Key? key;

  final _i8.Contact? contact;

  final bool isEdditing;
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsPageRoute';
}
