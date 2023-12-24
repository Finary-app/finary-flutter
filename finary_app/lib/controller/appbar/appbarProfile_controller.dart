// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finary_app/constant/color_constant.dart';

class AppBarProfileController extends GetxController {
  PreferredSizeWidget appbar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Profile",
        style: TextStyle(
            color: TextColor().black,
            fontWeight: FontWeight.w500,
            fontSize: 18),
      ),
    );
  }
}
