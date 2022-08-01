import 'package:flutter/material.dart';

class AnonymousLogin extends StatefulWidget {
  static String routeName = 'anonymouslogin';
  const AnonymousLogin({Key? key}) : super(key: key);

  @override
  State<AnonymousLogin> createState() => _AnonymousLoginState();
}

class _AnonymousLoginState extends State<AnonymousLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login anonymously"),
      ),
    );
  }
}
