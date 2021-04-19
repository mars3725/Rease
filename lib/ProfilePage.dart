import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  State createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  bool _editing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(_editing? Icons.check : Icons.edit),
          onPressed: ()=> setState(()=> _editing = !_editing)),
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 75, backgroundImage: AssetImage('assets/profile.jpg')),
            Padding(padding: EdgeInsets.all(15)),
            Text('Matt Mohandiss', style: TextStyle(fontSize: 32)),
            Padding(padding: EdgeInsets.all(30)),
            Padding(padding: EdgeInsets.all(30),
              child: Text("I'm a fourth year student at the University of Tennessee Knoxville. I like to run, cook, and take care of my dog, Sadie!", textAlign: TextAlign.center)),
            Padding(padding: EdgeInsets.all(50)),
            OutlinedButton(
                onPressed: ()=> googleSignIn.signOut().then(
                        (_) => Navigator.popUntil(context, 
                            ModalRoute.withName('/'))).then(
                        (value) => Navigator.of(context).pushNamed('/login')),
                child: Text('Log out'))
          ],
        )));
  }
}
