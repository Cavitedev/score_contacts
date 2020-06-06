import 'package:auto_route/auto_route_annotations.dart';
import 'package:scorecontacts/presentation/auth/sign_in/sign_in_page.dart';
import 'package:scorecontacts/presentation/auth/splash_page.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact_page.dart';
import 'package:scorecontacts/presentation/contacts/list_view/contact_list.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  ContactList contactList;
  AddContactPage addContact;
  SignInPage signInPage;
}
