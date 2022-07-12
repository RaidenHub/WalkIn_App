import 'dart:math';

import 'package:flutter/material.dart';
import 'package:walk_in/newOrder.dart';
import 'package:walk_in/presets.dart';
import 'package:walk_in/recommended.dart';

import 'bottomNavigationBar.dart';

class Shops extends StatefulWidget {
  const Shops({Key? key}) : super(key: key);

  @override
  State<Shops> createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  @override
  int index = 0;
  bool isSelected1 = false;
  bool isSelected2 = false;

  bool isSelected3 = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150.0,
              // width: ,
              color: Color.fromARGB(255, 74, 229, 126),
              child: Center(
                  child: Text(
                "ShopName",
                style: TextStyle(fontSize: 25),
              )),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),

            // margin: EdgeInsets.only(left: 10),

            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 5)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 74, 229, 126),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Recommended()),
                      );
                    },
                    child: Text('Recommended')),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewOrder()),
                      );
                    },
                    child: Text('New Order',
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 229, 126)))),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const presets()),
                      );
                    },
                    child: Text('Presets',
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 229, 126)))),
              ],
            ),
            // Row(
            //   children: [
            //     Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
            //     ChoiceChip(
            //       selected: isSelected1,
            //       label: Text('Recommended'),
            //       onSelected: (bool value1) {
            //         isSelected1 = value1;
            //         setState(() {
            //           index = 0;
            //         });
            //       },
            //       selectedColor: Color.fromARGB(255, 74, 229, 126),
            //     ),
            //     Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
            //     ChoiceChip(
            //       selected: isSelected2,
            //       // avatar: Icon(Icons.delete),
            //       label: Text('New Order'),
            //       // backgroundColor: Color.fromARGB(255, 74, 229, 126),

            //       onSelected: (bool value2) {
            //         isSelected2 = value2;
            //         setState(() {
            //           index = 1;
            //         });
            //       },
            //       selectedColor: Color.fromARGB(255, 74, 229, 126),
            //     ),
            //     Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
            //     ChoiceChip(
            //       selected: isSelected3,
            //       label: Text('Presets'),
            //       // backgroundColor: Color.fromARGB(255, 74, 229, 126),

            //       onSelected: (bool value3) {
            //         isSelected3 = value3;

            //         setState(() {
            //           index = 2;
            //         });
            //       },
            //       selectedColor: Color.fromARGB(255, 74, 229, 126),
            //     ),
            //   ],
            // ),
            // IndexedStack(index: index, children: [
            //   const Recommended(),
            //   const NewOrder(),
            //   const Presets(),
            // ]),
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
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
