import 'package:finary_app/constant/color_constant.dart';
import 'package:finary_app/template/background.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool _passVisible;
  @override
  void initState() {
    super.initState();
    _passVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
        pageBody: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          textAlign: TextAlign.center,
          "Selamat Datang Kembali",
          style: TextStyle(
              color: TextColor().black,
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
        SizedBox(width:328 ,
          height: 57,
          child: Text(
            textAlign: TextAlign.center,
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. ",
            style: TextStyle(
                color: TextColor().grey,
                fontWeight: FontWeight.normal,
                fontSize: 14),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          textAlign: TextAlign.start,
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
      ],
    ));
  }
}
