import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:scorecontacts/main.dart' as m;
import 'package:scorecontacts/presentation/auth/sign_in/sign_in_page.dart';

void main(){

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();




  testWidgets("Initialize opens MyApp", (WidgetTester tester) async {
    await m.main();
    await tester.pumpAndSettle();
    expect(find.byType(m.MyApp), findsOneWidget);
    expect(find.byType(SignInPage), findsOneWidget);
  });

  // testWidgets('get contacts from phone on Android sucessfully works', (WidgetTester tester) async {
  //   await tester.pumpWidget(m.MyApp());
  //   await tester.pumpAndSettle();
  //   const channel = MethodChannel("com.cavitedev.scorecontacts/contacts");
  //   final String result = await channel.invokeMethod("getContacts");
  //   const String matcher = '{"id":"1","name":"hola","emails":"[a@a.com, b@b.es]","numbers":"[1]"}';
  //   expect(result, matcher);
  // });



}