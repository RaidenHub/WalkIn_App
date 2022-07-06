import 'package:flutter/material.dart';
import 'package:walk_in/shop.dart';

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
      theme: ThemeData(primaryColor: Color.fromARGB(255, 233, 200, 123)),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Container(
              height: 200.0,
              // width: 200.0,
              color: Color.fromARGB(255, 74, 229, 126)),
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
    );
  }
}
