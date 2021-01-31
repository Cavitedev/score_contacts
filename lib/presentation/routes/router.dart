import 'package:auto_route/auto_route_annotations.dart';
import 'package:scorecontacts/presentation/auth/sign_in/sign_in_page.dart';
import 'package:scorecontacts/presentation/auth/splash_page.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact_page.dart';
import 'package:scorecontacts/presentation/contacts/list_view/contact_list.dart';
import 'package:scorecontacts/presentation/settings/settings_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <MaterialRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: ContactList),
      MaterialRoute(page: AddContactPage),
      MaterialRoute(page: SignInPage),
      MaterialRoute(page: SettingsPage),
    ])
class $Router {
}
