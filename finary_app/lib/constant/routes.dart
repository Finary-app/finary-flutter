// ignore_for_file: non_constant_identifier_names

import 'package:finary_app/dashboard/catatan_page.dart';
import 'package:finary_app/dashboard/dashboard_page.dart';
import 'package:finary_app/dashboard/profile_page.dart';
import 'package:finary_app/dashboard/saving_page.dart';
import 'package:flutter/material.dart';

String SIGNUP_PAGE = '/SignUpPage',
    LOGIN_PAGE = '/LoginPage',
    DASHBOARD_PAGE = '/DashboardPage';
List<Widget> listPage = [
  const DashboardPage(),
  const CatatanPage(),
  const SavingPage(),
  const ProfilePage(),
];
