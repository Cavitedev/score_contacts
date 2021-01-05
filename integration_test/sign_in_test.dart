import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:scorecontacts/main.dart';

void main(){

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("failing test example", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(MyApp), findsOneWidget);

  });

}