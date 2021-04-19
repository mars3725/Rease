import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListingsView extends StatefulWidget {
  @override
  State createState() => ListingsViewState();
}

class ListingsViewState extends State<ListingsView> {
  List<String> names = [
    "Quarry Trail",
    "The Commons",
    "Heights at Knoxville",
  ];

  List<int> prices = [
    3,
    2,
    4
  ];

  List<int> reviews = [
    5,
    2,
    1
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text(names[index], style: TextStyle(fontSize: 21), textAlign: TextAlign.center),
              subtitle: Column(
                children: [
                  Image.asset("assets/${names[index]}.jpg"),
                  Row(children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text(String.fromCharCodes(List.generate(prices[index], (index) => "\$".codeUnitAt(0))), style: TextStyle(fontSize: 18, color: Colors.black)),
                    Spacer(),
                    Row(children: List.generate(prices[index], (index) => Icon(Icons.star))),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  ])
                ]
              ),
            ),
            separatorBuilder: (context, index)=> Divider(), itemCount: names.length));
  }
}
