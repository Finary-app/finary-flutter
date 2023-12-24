import 'package:finary_app/constant/color_constant.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor().whiteDisabled,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/img/eclips.png"),
                    scale: 3,
                    alignment: Alignment.centerRight),
                backgroundBlendMode: BlendMode.values[3],
                gradient: RadialGradient(
                  colors: <Color>[
                    MainColor().primaryBlue,
                    BackgroundColor().white
                  ],
                  radius: 10.5,
                  center: const Alignment(-1, 2),
                ),
                color: MainColor().primaryBlue,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            width: 360,
            height: 240,
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset("assets/img/eclips.png", fit: BoxFit.fill),
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  SizedBox(
                    width: 181,
                    height: 200,
                    child: Image.asset("assets/img/catatan_dashboard.png",
                        fit: BoxFit.fill),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 58,
                        child: Text(
                          "Catat keuanganmu",
                          style: TextStyle(
                              color: TextColor().white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 150,
                        height: 20,
                        child: Text("Mulai dari sekarang",
                            style: TextStyle(
                                color: TextColor().white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                      )
                    ],
                  )
                ]),
              ],
            ),
          )
        ],
      ),

    );
  }
}
