import 'package:flutter/material.dart';
import 'gridex/gridview1.dart';
import 'listview/listview_builder.dart';
import 'listview/listview_custom.dart';
import 'stateful_login.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
 var screens  = [
   Login2(),
   ListView_with_builder(),
   ListView_Custom(),
   GridView1(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.purple,
          selectedItemColor: Colors.yellow,
          currentIndex: index,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.search),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded), label: 'create')
          ]),
      body:Center(
        child: screens[index],
      ),
    );
  }
}