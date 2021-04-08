import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
  @override
  State createState() => FeedViewState();
}

class FeedViewState extends State<FeedView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Feed View'),
          ],
        )));
  }
}
