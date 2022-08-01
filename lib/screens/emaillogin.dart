import 'package:flutter/material.dart';

class EmailLogin extends StatefulWidget {
  static String routeName = 'emaillogin';
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login via Email"),
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
              onPressed: () {},
              child: Text("login"),
            )
          ],
        ),
      ),
    );
  }
}
