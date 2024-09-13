import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
         BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        items: [

        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home',),
        BottomNavigationBarItem(icon: Image.asset('assets/images/reels.png',width: 30,), label: 'Reels',),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add',),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded), label: 'heart',),
        BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),), label: 'user',),


        ],



    );
  }

}