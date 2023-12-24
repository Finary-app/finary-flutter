import 'package:finary_app/constant/routes.dart';
import 'package:finary_app/dashboard/page.dart';
import 'package:finary_app/onboarding/log_in_page.dart';
import 'package:finary_app/onboarding/page.dart';
import 'package:finary_app/onboarding/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Nunito Sans'),
      home: const OnboardingPage(),
      routes: <String, WidgetBuilder>{
        SIGNUP_PAGE: (BuildContext context) => const SignUpPage(),
        LOGIN_PAGE: (BuildContext context) => const LoginPage(),
        DASHBOARD_PAGE: (BuildContext context) => const MainPage()
      },
    );
  }
}
