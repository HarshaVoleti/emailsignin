import 'package:emailsign/services/firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmailSignin extends StatefulWidget {
  const EmailSignin({Key? key}) : super(key: key);
  static String routeName = 'emailsignin';

  @override
  State<EmailSignin> createState() => _EmailSigninState();
}

class _EmailSigninState extends State<EmailSignin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  void signUp() {
    FirebaseAuthMethods(FirebaseAuth.instance).signupwithemail(
      email: emailcontroller.text,
      password: passwordcontroller.text,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign in"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 300,
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              height: 40,
              width: 300,
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            ElevatedButton(
              onPressed: signUp,
              child: Text("Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
