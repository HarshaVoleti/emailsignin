import 'package:flutter/material.dart';
import 'pages.dart';

class MyHomePage extends StatelessWidget {
  static String routeName = 'homescreen';
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Authentication",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, EmailLogin.routeName),
              child: Text("Email Login"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, PhoneLogin.routeName),
              child: Text("Phone Login"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, EmailSignin.routeName),
              child: Text("Email Signin"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, GoogleSignin.routeName),
              child: Text("Google Signin"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, FBsignin.routeName),
              child: Text("FB Login"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, AnonymousLogin.routeName),
              child: Text("Login Anonymously"),
            ),
          ],
        ),
      ),
    );
  }
}
