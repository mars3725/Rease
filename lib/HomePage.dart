import 'package:flutter/material.dart';
import 'package:rentview/FeedView.dart';
import 'package:rentview/ListingsView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(icon: Icon(Icons.settings), onPressed: () => Navigator.pushNamed(context, '/profile'))
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.messenger)),
              Tab(icon: Icon(Icons.house)),
            ],
          ),
          title: Text('RentView'),
        ),
        body: TabBarView(
          children: [
            FeedView(),
            ListingsView()
          ],
        ),
      ),
    );
  }
}