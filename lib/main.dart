import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rentview/HomePage.dart';
import 'package:rentview/LoginPage.dart';

import 'package:flutter/rendering.dart';
import 'package:rentview/ProfilePage.dart';

void main() {
  // debugPaintSizeEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RentView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Builder(builder: (context) {
          googleSignIn.isSignedIn().then((signedIn) {
            if (signedIn) {
              Navigator.of(context).pushNamed('/home');
              print('Already signed in');
            } else
              googleSignIn.signInSilently().then((user) {
                print('Signing in silently');
                if (user == null) {
                  print('failed');
                  Navigator.of(context).pushNamed('/login');
                } else {
                  print('success');
                  Navigator.of(context).pushNamed('/home');
                }
              });
          });
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        }),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage()
      },
    );
  }
}
