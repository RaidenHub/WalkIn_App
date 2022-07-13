import 'package:flutter/material.dart';
import 'package:walk_in/cart.dart';
import 'package:walk_in/login.dart';
import 'package:walk_in/main.dart';
import 'package:walk_in/profile.dart';

class BottomNavigation extends StatefulWidget {
  int index = 0;
  BottomNavigation({this.index = 0});

  @override
  State<BottomNavigation> createState() =>
      _BottomNavigationState(currentindex: index);
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentindex = 0;
  _BottomNavigationState({this.currentindex = 0});
  // int _currentindex = index;
  // final List<Widget> _children = [
  //   MyApp(),
  //   CartP(),
  //   Profile(),
  //   // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  // ];

  void _onItemTapped(int index) {
    setState(() {
      currentindex = index;

      if (index == 0) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp()));
      }
      if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CartP()));
      }
      if (index == 2) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Profile()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        // selectedIconTheme: IconThemeData(color: Colors.amber),
        //
        currentIndex: currentindex,
        type: BottomNavigationBarType.fixed,

        // onTap: (value) => setState(() => index = value),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
        ],
        // currentIndex: index,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
