import 'package:finary_app/constant/color_constant.dart';
import 'package:flutter/material.dart';

class SavingPage extends StatefulWidget {
  const SavingPage({super.key});

  @override
  State<SavingPage> createState() => _SavingPageState();
}

class _SavingPageState extends State<SavingPage> {
  late Future<List<String>> fetchDataAPI;
  late List<String> listData = ["tes"];
  Future<List<String>> fetchData() async {
    return await listData;
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      fetchDataAPI = fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder<List<String>>(
          future: fetchDataAPI,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            late List<String> dataSaving = snapshot.data!;
            if (snapshot.hasData && dataSaving.isNotEmpty) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: dataSaving.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: BackgroundColor().white,
                      child: ListTile(
                        title: Text(dataSaving[index]),
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
                          border:
                              Border.all(width: 4, color: TextColor().grey)),
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
          }),
    );
  }
}
