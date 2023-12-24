// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finary_app/constant/color_constant.dart';

class AppBarCatatanController extends GetxController {
  PreferredSizeWidget appbar() {
    return AppBar(
    
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: TextColor().black, fontSize: 18, fontWeight: FontWeight.w500),
      title: Text("Catatan"),
    );
  }
}
