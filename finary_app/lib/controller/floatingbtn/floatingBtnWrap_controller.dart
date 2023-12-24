import 'package:finary_app/controller/floatingbtn/floatingBtnCatatan_controller.dart';
import 'package:finary_app/controller/floatingbtn/floatingBtnProfile_controller.dart';
import 'package:finary_app/controller/floatingbtn/floatingBtnSaving_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingBtnWrapController extends GetxController {
  FloatingBtnCatatanController _floatingBtnCatatanController =
      Get.put(FloatingBtnCatatanController());
  FloatingBtnSavingController _floatingBtnSavingController =
      Get.put(FloatingBtnSavingController());
  FloatingBtnProfileController _floatingBtnProfileController =
      Get.put(FloatingBtnProfileController());

  Widget getFloatingBtn(int index) {
    switch (index) {
      case 1:
        return _floatingBtnCatatanController.floatingBtn();
      case 2:
        return _floatingBtnSavingController.floatingBtn();
      case 3:
        return _floatingBtnProfileController.floatingBtn();
      default:
        return _floatingBtnProfileController.floatingBtn();
    }
  }
}
