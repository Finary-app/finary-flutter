import 'package:finary_app/constant/color_constant.dart';
import 'package:finary_app/controller/fetchData/showCatatan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatatanPage extends StatefulWidget {
  const CatatanPage({super.key});

  @override
  State<CatatanPage> createState() => _CatatanPageState();
}

class _CatatanPageState extends State<CatatanPage> {
  bool isBulananSelected = true;
  late Future<Map<String, dynamic>> fetchDataAPI;
  late Map<String, dynamic> listData = {
    "bulan": "Januari",
    "tahun": "2023",
    "pengeluaran": 10000,
    "saldo": 2000
  };
  Future<Map<String, dynamic>> fetchData() async {
    return await listData;
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      fetchDataAPI = fetchData();
    });
  }

  ShowCatatanController _showCatatanController =
      Get.put(ShowCatatanController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 60,
            color: BackgroundColor().white.withOpacity(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return isBulananSelected
                          ? LinearBorder(
                              side: BorderSide(
                                  color: StrokeColor().focused, width: 2),
                              bottom: const LinearBorderEdge(size: 1))
                          : const BeveledRectangleBorder(
                              side: BorderSide(
                                  strokeAlign: 2,
                                  color: Colors.transparent,
                                  width: 2));
                    })),
                    onFocusChange: (onFocus) {
                      if (onFocus) {
                        setState(() {
                          isBulananSelected = onFocus;
                        });
                      }
                    },
                    onPressed: () {
                      setState(() {
                        isBulananSelected = true;
                      });
                    },
                    child: Text(
                      "Bulanan",
                      style: TextStyle(
                          color: MainColor().primaryBlue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isBulananSelected = false;
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) {
                      return isBulananSelected
                          ? const BeveledRectangleBorder(
                              side: BorderSide(
                                  strokeAlign: 2,
                                  color: Colors.transparent,
                                  width: 2))
                          : LinearBorder(
                              side: BorderSide(
                                  color: StrokeColor().focused, width: 2),
                              bottom: const LinearBorderEdge(size: 1));
                    })),
                    child: Text(
                      "Tahunan",
                      style: TextStyle(
                          color: MainColor().primaryBlue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
              margin: EdgeInsets.only(bottom: 8),
              color: BackgroundColor().white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Total Bulan ini :"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: [
                          Text("Pemasukan",
                              style: TextStyle(color: TextColor().grey)),
                          Text(
                            "Rp.0",
                            style:
                                TextStyle(color: TextColorInterface().success),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("Pengeluaran",
                              style: TextStyle(color: TextColor().grey)),
                          Text(
                            "Rp.0",
                            style: TextStyle(color: TextColorInterface().error),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("Selisih",
                              style: TextStyle(color: TextColor().grey)),
                          Text("Rp.0",
                              style: TextStyle(color: TextColor().grey))
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          _showCatatanController.showDataCatatan(fetchDataAPI),
        ],
      ),
    );
  }
}
