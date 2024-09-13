import 'package:flutter/material.dart';
import 'package:insta_clone/widget/Post.dart';
import 'package:insta_clone/widget/Story.dart';
import 'package:insta_clone/widget/bottombar_widget.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 30,
          color: Colors.grey[600],
        ),
        titleSpacing: 3,
        title: Text(
          "Instagram",
          style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'Billabong',
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 35,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/massenger.png')),
        ],
      ),
      body: Column(
        children: [
          Story(),
          Divider(
            color: Colors.grey,
          ),
          Expanded(child: Post()),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
