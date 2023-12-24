import 'package:finary_app/constant/color_constant.dart';
import 'package:finary_app/constant/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ShowCatatanController extends GetxController {
  Widget showDataCatatan(Future<Map<String, dynamic>> data) {
    return FutureBuilder<Map<String, dynamic>>(
        future: data,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          late Map<String, dynamic> dataSaving = snapshot.data!;
          if (snapshot.hasData && dataSaving.isNotEmpty) {
            return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: dataSaving.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    color: BackgroundColor().white,
                    child: ListTile(
                      title: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(dataSaving["bulan"]),
                              Text(dataSaving["tahun"]),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Pengeluaran"),
                              Text(
                                  "Rp." + dataSaving["pengeluaran"].toString()),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Saldo"),
                              Text("Rp." + dataSaving["saldo"].toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return Container(
              width: 250,
              height: 120,
              margin: EdgeInsets.all(80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 4, color: TextColor().grey)),
                    child: Icon(
                      Icons.notes_rounded,
                      size: 50,
                      color: TextColor().grey,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Oopss, saat ini kamu belum punya saving future, coba tambahkan.",
                      style: TextStyle(fontSize: 12, color: TextColor().grey),
                    ),
                  )
                ],
              ),
            );
          }
        });
  }
}
