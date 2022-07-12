import 'package:flutter/material.dart';
import 'package:walk_in/cart.dart';
import 'package:walk_in/login.dart';
import 'package:walk_in/main.dart';
import 'package:walk_in/profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentindex = 0;
  // final List<Widget> _children = [
  //   MyApp(),
  //   CartP(),
  //   Profile(),
  //   // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _currentindex = index;

      if (index == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
      }
      if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CartP()));
      }
      if (index == 2) {
        Navigator.push(
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
        currentIndex: _currentindex,
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
