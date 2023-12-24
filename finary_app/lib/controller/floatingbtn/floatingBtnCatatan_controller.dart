// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finary_app/constant/color_constant.dart';

class FloatingBtnCatatanController extends GetxController {
  Widget floatingBtn() {
    return Container(
      width: 328,
      height: 44,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        backgroundColor: MainColor().primaryBlue,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: TextColor().white,
            ),
            Text(
              "Tambah Catatan",
              style: TextStyle(color: TextColor().white),
            )
          ],
        ),
      ),
    );
  }
}
