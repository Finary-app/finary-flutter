import 'package:finary_app/constant/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NavigatePageController extends GetxController {
  Future<void> navigateDashboard(BuildContext context) {
    return Navigator.pushReplacementNamed(context, DASHBOARD_PAGE);
  }

  Future<void> navigateLoginPage(BuildContext context) {
    return Navigator.pushReplacementNamed(context, LOGIN_PAGE);
  }

  Future<void> navigateSignUpPage(BuildContext context) {
    return Navigator.pushReplacementNamed(context, SIGNUP_PAGE);
  }
}
