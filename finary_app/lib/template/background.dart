import 'package:flutter/material.dart';
import 'package:finary_app/constant/color_constant.dart';

class BackgroundPage extends StatefulWidget {
  const BackgroundPage({super.key, required this.pageBody});
  final Widget? pageBody;

  @override
  State<BackgroundPage> createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor().whiteDisabled,
      body: Container(
          margin: const EdgeInsets.fromLTRB(10, 35, 10, 10), child: widget.pageBody),
    );
  }
}
