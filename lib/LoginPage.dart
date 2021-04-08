import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn googleSignIn = GoogleSignIn();

class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  @override
  void initState() {
    super.initState();
    googleSignIn.onCurrentUserChanged.listen((event) {
      if (googleSignIn.currentUser != null) {
        Navigator.of(context).popAndPushNamed('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', scale: 5),
            Padding(padding: EdgeInsets.all(50)),
            OutlinedButton.icon(onPressed: ()=> googleSignIn.signIn(),
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Image.asset('assets/google.png', scale: 2),
                label: Text('Sign in with Google', style: TextStyle(color: Colors.black))),
          ],
        )));
  }
}
