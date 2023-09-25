import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: BottomNavBar(),));
}

class BottomNavBar extends StatefulWidget {
  int index = 0;


  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom nav bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple, selectedItemColor: Colors.yellow,
        currentIndex: index ,
        items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded), label: 'Create'),
      ],),
    );
  }
}
