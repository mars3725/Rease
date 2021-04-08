import 'package:flutter/material.dart';

class ListingsView extends StatefulWidget {
  @override
  State createState() => ListingsViewState();
}

class ListingsViewState extends State<ListingsView> {

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
            Text('Listings View'),
          ],
        )));
  }
}
