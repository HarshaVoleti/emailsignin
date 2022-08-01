import 'package:flutter/material.dart';

class GoogleSignin extends StatefulWidget {
  static String routeName = "googlesignin";
  const GoogleSignin({Key? key}) : super(key: key);

  @override
  State<GoogleSignin> createState() => _GoogleSigninState();
}

class _GoogleSigninState extends State<GoogleSignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("signin with google"),
      ),
    );
  }
}
