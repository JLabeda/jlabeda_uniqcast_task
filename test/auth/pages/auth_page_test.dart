import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jlabeda_uniqcast_task/auth/pages/auth_page.dart';

void main() {
  testWidgets('Auth page contains two textfields and a login button',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AuthPage(),
      ),
    );
    expect(find.widgetWithText(TextField, 'E-mail'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Password'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);
  });
}
