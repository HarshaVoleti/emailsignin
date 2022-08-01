import 'package:flutter/material.dart';

class PhoneLogin extends StatefulWidget {
  static String routeName = 'phonelogin';
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login via Phone"),
      ),
    );
  }
}
