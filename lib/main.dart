import 'package:emailsign/firebase_options.dart';
import 'package:emailsign/screens/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
        initialRoute: "loginpage",
        routes: {
          MyHomePage.routeName: (context) => MyHomePage(),
          EmailLogin.routeName: (context) => EmailLogin(),
          EmailSignin.routeName: (context) => EmailSignin(),
          PhoneLogin.routeName: (context) => PhoneLogin(),
          AnonymousLogin.routeName: (context) => AnonymousLogin(),
          GoogleSignin.routeName: (context) => GoogleSignin(),
          FBsignin.routeName: (context) => FBsignin(),
        });
  }
}
