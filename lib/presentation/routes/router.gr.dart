// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/mention/i_mentionable.dart' as _i13;
import '../../domain/user/contacts_data/contact.dart' as _i11;
import '../../domain/user/diary/diary_entry.dart' as _i12;
import '../auth/sign_in/sign_in_page.dart' as _i6;
import '../auth/splash_page.dart' as _i3;
import '../contacts/add_contacts/add_contact_page.dart' as _i5;
import '../contacts/list_view/contact_list.dart' as _i4;
import '../contacts/view_contact/view_contact_page.dart' as _i8;
import '../diary/add_diary_entry/add_diary_page.dart' as _i9;
import '../diary/list_entry/list_diary_entry_page.dart' as _i10;
import '../settings/settings_page.dart' as _i7;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    ContactListRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.ContactList();
        }),
    AddContactPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AddContactPageRouteArgs>(
              orElse: () => const AddContactPageRouteArgs());
          return _i5.AddContactPage(key: args.key, contact: args.contact);
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SignInPage();
        }),
    SettingsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SettingsPage();
        }),
    ViewContactPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ViewContactPageRouteArgs>();
          return _i8.ViewContactPage(
              contact: args.contact, onDelete: args.onDelete);
        }),
    AddDiaryPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AddDiaryPageRouteArgs>(
              orElse: () => const AddDiaryPageRouteArgs());
          return _i9.AddDiaryPage(key: args.key, diaryEntry: args.diaryEntry);
        }),
    ListDiaryEntryPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ListDiaryEntryPageRouteArgs>(
              orElse: () => const ListDiaryEntryPageRouteArgs());
          return _i10.ListDiaryEntryPage(mentionable: args.mentionable);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(ContactListRoute.name, path: '/contact-list'),
        _i1.RouteConfig(AddContactPageRoute.name, path: '/add-contact-page'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SettingsPageRoute.name, path: '/settings-page'),
        _i1.RouteConfig(ViewContactPageRoute.name, path: '/view-contact-page'),
        _i1.RouteConfig(AddDiaryPageRoute.name, path: '/add-diary-page'),
        _i1.RouteConfig(ListDiaryEntryPageRoute.name,
            path: '/list-diary-entry-page')
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
  AddContactPageRoute({_i2.Key? key, _i11.Contact? contact})
      : super(name,
            path: '/add-contact-page',
            args: AddContactPageRouteArgs(key: key, contact: contact));

  static const String name = 'AddContactPageRoute';
}

class AddContactPageRouteArgs {
  const AddContactPageRouteArgs({this.key, this.contact});

  final _i2.Key? key;

  final _i11.Contact? contact;
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsPageRoute';
}

class ViewContactPageRoute extends _i1.PageRouteInfo<ViewContactPageRouteArgs> {
  ViewContactPageRoute(
      {required _i11.Contact contact, required Function onDelete})
      : super(name,
            path: '/view-contact-page',
            args:
                ViewContactPageRouteArgs(contact: contact, onDelete: onDelete));

  static const String name = 'ViewContactPageRoute';
}

class ViewContactPageRouteArgs {
  const ViewContactPageRouteArgs(
      {required this.contact, required this.onDelete});

  final _i11.Contact contact;

  final Function onDelete;
}

class AddDiaryPageRoute extends _i1.PageRouteInfo<AddDiaryPageRouteArgs> {
  AddDiaryPageRoute({_i2.Key? key, _i12.DiaryEntry? diaryEntry})
      : super(name,
            path: '/add-diary-page',
            args: AddDiaryPageRouteArgs(key: key, diaryEntry: diaryEntry));

  static const String name = 'AddDiaryPageRoute';
}

class AddDiaryPageRouteArgs {
  const AddDiaryPageRouteArgs({this.key, this.diaryEntry});

  final _i2.Key? key;

  final _i12.DiaryEntry? diaryEntry;
}

class ListDiaryEntryPageRoute
    extends _i1.PageRouteInfo<ListDiaryEntryPageRouteArgs> {
  ListDiaryEntryPageRoute({_i13.IMentionable? mentionable})
      : super(name,
            path: '/list-diary-entry-page',
            args: ListDiaryEntryPageRouteArgs(mentionable: mentionable));

  static const String name = 'ListDiaryEntryPageRoute';
}

class ListDiaryEntryPageRouteArgs {
  const ListDiaryEntryPageRouteArgs({this.mentionable});

  final _i13.IMentionable? mentionable;
}
