import 'package:flutter/material.dart';

class FBsignin extends StatefulWidget {
  static String routeName = 'fbsignin';
  const FBsignin({Key? key}) : super(key: key);

  @override
  State<FBsignin> createState() => _FBsigninState();
}

class _FBsigninState extends State<FBsignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login with FB"),
      ),
    );
  }
}
