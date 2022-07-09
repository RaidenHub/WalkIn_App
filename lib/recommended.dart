import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            color: Color.fromARGB(149, 130, 248, 124),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: 80,
              // color: Color.fromARGB(149, 130, 248, 124),
              padding: EdgeInsets.symmetric(vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('ItemName'), Text('Item PIcture')],
                  ),
                  Text("Price"),
                  Text('Product Description')
                ],
              ),
            ),
          ),
          Card(
            color: Color.fromARGB(149, 130, 248, 124),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: 80,
              // color: Color.fromARGB(149, 130, 248, 124),
              padding: EdgeInsets.symmetric(vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('ItemName'), Text('Item PIcture')],
                  ),
                  Text("Price"),
                  Text('Product Description')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
