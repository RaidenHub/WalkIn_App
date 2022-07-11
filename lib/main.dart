import 'package:flutter/material.dart';
import 'package:walk_in/AddPresets/cart.dart';
import 'package:walk_in/profile.dart';
import 'package:walk_in/shop.dart';
import 'package:walk_in/AddPresets/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WalkIn',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 255, 255, 255)),
      home: const MyHomePage(title: 'WalkIn'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MyApp(),
    // CartP(),
    CartP(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    if (index == 0)
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    if (index == 1)
      Navigator.push(context, MaterialPageRoute(builder: (context) => CartP()));
    if (index == 2)
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Profile()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Card(
              // height: 150.0,
              // width: ,
              color: Color.fromARGB(255, 74, 229, 126),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                "ShopName",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Shops()),
              );
            },
            child: Center(
              child: Container(
                height: 80,
                width: 370,
                color: Color.fromARGB(255, 74, 229, 126),
                child: Text(
                  "Shop1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic, height: 2, fontSize: 25),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Shops()),
              );
            },
            child: Center(
              child: Container(
                height: 80,
                width: 370,
                color: Color.fromARGB(255, 74, 229, 126),
                child: Text(
                  "Shop2",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic, height: 2, fontSize: 25),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Shops()),
              );
            },
            child: Center(
              child: Container(
                height: 80,
                width: 370,
                color: Color.fromARGB(255, 74, 229, 126),
                child: Text(
                  "Shop3",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic, height: 2, fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        // onTap: (value) => setState(() => index = value),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'School',
          ),
        ],
        // currentIndex: index,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
