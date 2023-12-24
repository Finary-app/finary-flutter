// ignore_for_file: file_names

import 'package:finary_app/controller/appbar/appbarCatatan_controller.dart';
import 'package:finary_app/controller/appbar/appbarProfile_controller.dart';
import 'package:finary_app/controller/appbar/appbarSaving_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppBarWrapController extends GetxController {
  final AppBarCatatanController _appBarCatatanController =
      Get.put(AppBarCatatanController());
  final AppBarProfileController _appBarProfileController =
      Get.put(AppBarProfileController());
  final AppBarSavingController _appBarSavingController =
      Get.put(AppBarSavingController());

  PreferredSizeWidget getAppBar(int index) {
    switch (index) {
      case 1:
        return _appBarCatatanController.appbar();
      case 2:
        return _appBarSavingController.appbar();
      case 3:
        return _appBarProfileController.appbar();
      default:
        return _appBarCatatanController.appbar();
    }
  }
}
