import 'package:finary_app/controller/navigate_controller.dart';
import 'package:finary_app/template/background.dart';
import 'package:flutter/material.dart';
import 'package:finary_app/constant/color_constant.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final NavigatePageController _navigatePageController =
      Get.put(NavigatePageController());
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _tglLahirHariController = TextEditingController();
  final TextEditingController _tglLahirBlnController = TextEditingController();
  final TextEditingController _tglLahirThnController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();
  late bool _passVisible;
  late bool _passConfirmVisible;
  @override
  void initState() {
    super.initState();
    _passVisible = false;
    _passConfirmVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      pageBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Selamat Datang",
              style: TextStyle(
                  color: TextColor().black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.center,
            "Daftar terlebih dahulu untuk mendapatkan fitur mengelola keuanganmu!",
            style: TextStyle(
                color: TextColor().grey,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.start,
            "Masukkan Nama",
            style: TextStyle(
                color: TextColor().black,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 328,
            height: 44,
            child: TextFormField(
              controller: _namaController,
              decoration: InputDecoration(
                  fillColor: FieldsColor().form,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide:
                          BorderSide(color: FieldsColor().strokeLoading))),
            ),
          ),
          Text(
            "Masukkan Username",
            style: TextStyle(
                color: TextColor().black,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 328,
            height: 44,
            child: TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                  fillColor: FieldsColor().form,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide:
                          BorderSide(color: FieldsColor().strokeLoading))),
            ),
          ),
          Text(
            textAlign: TextAlign.start,
            "Tanggal Lahir",
            style: TextStyle(
                color: TextColor().black,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hari",
                    style: TextStyle(
                        color: TextColor().black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 44,
                    width: 100,
                    child: TextFormField(
                      controller: _tglLahirHariController,
                      decoration: InputDecoration(
                          labelStyle:
                              TextStyle(color: FieldsColor().description),
                          labelText: "DD",
                          fillColor: FieldsColor().form,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide(
                                  color: FieldsColor().strokeLoading))),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bulan",
                    style: TextStyle(
                        color: TextColor().black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                      height: 44,
                      width: 100,
                      child: TextFormField(
                        controller: _tglLahirBlnController,
                        decoration: InputDecoration(
                            labelStyle:
                                TextStyle(color: FieldsColor().description),
                            labelText: "MM",
                            fillColor: FieldsColor().form,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                    color: FieldsColor().strokeLoading))),
                      )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Tahun",
                    style: TextStyle(
                        color: TextColor().black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                      height: 44,
                      width: 100,
                      child: TextFormField(
                        controller: _tglLahirThnController,
                        decoration: InputDecoration(
                            labelText: "YYYY",
                            labelStyle:
                                TextStyle(color: FieldsColor().description),
                            fillColor: FieldsColor().form,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                    color: FieldsColor().strokeLoading))),
                      )),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Masukkan Password",
            style: TextStyle(
                color: TextColor().black,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 328,
            height: 44,
            child: TextFormField(
              obscureText: _passVisible,
              controller: _passwordController,
              decoration: InputDecoration(
                fillColor: FieldsColor().form,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(color: FieldsColor().strokeLoading),
                ),
                suffixIcon: IconButton(
                  icon: _passVisible
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _passVisible = !_passVisible;
                    });
                  },
                  color: TextColor().black,
                ),
              ),
            ),
          ),
          Text(
            "Konfirmasi Password",
            style: TextStyle(
                color: TextColor().black,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 328,
            height: 44,
            child: TextFormField(
              obscureText: _passConfirmVisible,
              controller: _passwordConfirmController,
              decoration: InputDecoration(
                fillColor: FieldsColor().form,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(color: FieldsColor().strokeLoading),
                ),
                suffixIcon: IconButton(
                  icon: _passConfirmVisible
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _passConfirmVisible = !_passConfirmVisible;
                    });
                  },
                  color: TextColor().black,
                ),
              ),
            ),
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
              onPressed: () {},
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
                    _navigatePageController.navigateLoginPage(context);
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
