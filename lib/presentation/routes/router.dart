import 'package:auto_route/annotations.dart';
import 'package:scorecontacts/presentation/auth/sign_in/sign_in_page.dart';
import 'package:scorecontacts/presentation/auth/splash_page.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/add_contact_page.dart';
import 'package:scorecontacts/presentation/contacts/list_view/contact_list.dart';
import 'package:scorecontacts/presentation/contacts/view_contact/view_contact_page.dart';
import 'package:scorecontacts/presentation/diary/add_diary_entry/add_diary_page.dart';
import 'package:scorecontacts/presentation/diary/list_entry/list_diary_entry_page.dart';
import 'package:scorecontacts/presentation/settings/settings_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: ContactList),
    MaterialRoute(page: AddContactPage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SettingsPage),
    MaterialRoute(page: ViewContactPage),
    MaterialRoute(page: AddDiaryPage),
    MaterialRoute(page: ListDiaryEntryPage)
  ],
)
class $Router {}
