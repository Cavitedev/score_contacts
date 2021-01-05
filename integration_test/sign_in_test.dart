import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:scorecontacts/main.dart' as m;

void main(){

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Initialize opens MyApp", (WidgetTester tester) async {
    await m.main();
    await tester.pumpAndSettle();
    expect(find.byType(m.MyApp), findsOneWidget);

  });

}