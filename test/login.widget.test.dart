import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jroscope/config/router.config.dart';
import 'package:jroscope/view/user/auth/login.auth.view.dart';

void main() {
  testWidgets('Login view to test enter text and tap sign in button and find snackbar ', (WidgetTester tester) async {
    ///define login screen widget;
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (BuildContext context, child) => MaterialApp.router(
          routerConfig: routeConfig,
        ),
      ),
    );
    // Find text fields for email and password
    final Finder emailFieldFinder = find.byKey(Key('emailTextFieldKey'));
    final Finder passwordFieldFinder =
        find.byKey(const Key('passwordTextFieldKey'));

    // Enter invalid email and password
    await tester.enterText(emailFieldFinder, 'invalid_email');
    await tester.enterText(passwordFieldFinder, 'short');

    // // Tap on the login button
    await tester.tap(
      find.byKey(const Key('signInButtonKey')),
    );
    await tester.pump();

    /// find toast with test invalid email and password
    final Finder toastFinder = find.text('Invalid email and password');

    // Verify invalid toast messages are displayed
    expect(toastFinder, findsOneWidget);
  });

  testWidgets('Login view navigates to register page after tap register button',
      (WidgetTester tester) async {
    // Build LoginScreen widget
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (BuildContext context, child) => MaterialApp.router(
          routerConfig: routeConfig,
        ),
      ),
    );

    // Tap on the register button
    await tester.tap(
      find.byKey(
        const Key('registerButtonKey'),
      ),
    );
    await tester.pumpAndSettle();

    // Verify that we have navigated to the register screen
    expect(find.byKey(const Key('registerStackWidgetKey')), findsOneWidget);
  });
}
