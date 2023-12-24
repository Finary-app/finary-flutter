import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finary_app/constant/color_constant.dart';

class FloatingBtnProfileController extends GetxController {
  Widget floatingBtn() {
    return Container(
      width: 328,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: TextColorInterface().error),
          borderRadius: BorderRadius.circular(6)),
      height: 44,
      child: FloatingActionButton(
          elevation: 0,
          splashColor: Colors.black26,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          onPressed: () {},
          child: Text(
            "Logout",
            style: TextStyle(color: MainColor().primaryBlue),
          )),
    );
  }
}
