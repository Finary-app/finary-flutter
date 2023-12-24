import 'package:finary_app/constant/color_constant.dart';
import 'package:finary_app/constant/routes.dart';
import 'package:finary_app/controller/appbar/appBarWrap_controller.dart';
import 'package:finary_app/controller/floatingbtn/floatingBtnWrap_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final AppBarWrapController _appBarWrapController =
      Get.put(AppBarWrapController());
  final FloatingBtnWrapController _floatingBtnWrapController =
      Get.put(FloatingBtnWrapController());
  int currentPageIndex = 0;
  List<Widget> list = listPage;
  @override
  void initState() {
    super.initState();
  }

  void onScreenSelected(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentPageIndex == 0
          ? null
          : _appBarWrapController.getAppBar(currentPageIndex),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: BackgroundColor().whiteDisabled,
      body: list.elementAt(currentPageIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onScreenSelected,
          currentIndex: currentPageIndex,
          backgroundColor: BackgroundColor().white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.notes), label: "Catatan"),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Saving"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
      floatingActionButton: currentPageIndex == 0
          ? null
          : _floatingBtnWrapController.getFloatingBtn(currentPageIndex),
    );
  }
}
