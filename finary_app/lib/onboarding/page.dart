import 'package:finary_app/controller/navigate_controller.dart';
import 'package:finary_app/template/background.dart';
import 'package:flutter/material.dart';
import 'package:finary_app/constant/color_constant.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final NavigatePageController navigatePageController = Get.put(NavigatePageController());
  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      pageBody: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                  width: 156,
                  height: 404,
                  child: Image.asset(
                    'assets/img/note_background.png',
                    fit: BoxFit.fill,
                  )),
              Column(
                children: <Widget>[
                  SizedBox(
                      width: 156,
                      height: 241,
                      child: Image.asset(
                        'assets/img/saving_background.png',
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                      width: 156,
                      height: 177,
                      child: Image.asset(
                        'assets/img/calculate_background.png',
                        fit: BoxFit.fill,
                      )),
                ],
              ),
            ],
          ),
          const Text(
            "Catat semua pengeluaranmu disini",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Pantau, rencanakan, dan kendalikan uangmu dengan Finary",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 16,
                color: TextColor().grey),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.resolveWith((states) {
                    return const Size(328, 44);
                  }),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return ButtonPrimaryColor().bgClick;
                    } else {
                      return ButtonPrimaryColor().bgDefault;
                    }
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ))),
              onPressed: () {
                navigatePageController.navigateSignUpPage(context);
              },
              child: Text(
                "Daftar",
                textAlign: TextAlign.center,
                style: TextStyle(color: TextColor().white),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sudah punya akun?",
                style: TextStyle(
                    color: TextColor().grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              TextButton(
                  onPressed: () {
                   navigatePageController.navigateLoginPage(context);
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                        fontSize: 14,
                        color: ButtonSecondaryColor().textActive,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
