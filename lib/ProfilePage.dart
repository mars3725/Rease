import 'package:flutter/material.dart';

import 'LoginPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  State createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Text('This is my bio and I like it that way.'),
            Padding(padding: EdgeInsets.all(50)),
            ElevatedButton(
                onPressed: ()=> googleSignIn.signOut().then(
                    (_) => Navigator.popUntil(context, ModalRoute.withName('/'))).then((value) => Navigator.of(context).pushNamed('/login')),
                child: Text('Log out')),
          ],
        )));
  }
}
