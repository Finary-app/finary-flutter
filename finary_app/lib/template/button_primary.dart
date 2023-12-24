import 'package:flutter/material.dart';
import 'package:finary_app/constant/color_constant.dart';

class ButtonPrimary extends StatefulWidget {
  const ButtonPrimary({super.key, required this.title, required this.func});
  final String? title;
  final Function? func;
  @override
  State<ButtonPrimary> createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  void initState() {
    super.initState();
  }

  doSomething() {
    widget.func;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
          setState(() {
            doSomething();
          });
        },
        child: Text(
          widget.title.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(color: TextColor().white),
        ));
  }
}
