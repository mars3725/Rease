import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
  @override
  State createState() => FeedViewState();
}

class FeedViewState extends State<FeedView> {
  List<String> usernames = [
    "Joe1298",
    "BetsyFromUT",
    "GoVols2009",
    "User1234",
    "VolsFan1998",
    "Mars3725",
    "SuperMan",
    "KingofTheHill"
  ];

  List<String> titles = [
    "Where can I find a good apartment?",
    "Does Quarry Trail allow pets?",
    "My thoughts on the Heights at Knoxville",
    "Looking for a roommate in a 4BR/2B at the Woodlands",
    "How do I sign a lease with the Commons?",
    "What is the best way to get to campus?",
    "Favorite restaurant in South Knox",
    "Best Parking near the hill"
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){}),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.favorite),
              title: Text(titles[index]),
            ),
            separatorBuilder: (context, index)=> Divider(), itemCount: titles.length));
  }
}
