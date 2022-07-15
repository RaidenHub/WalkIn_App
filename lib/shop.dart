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
              color: Theme.of(context).primaryColor,
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
                      primary: Theme.of(context).primaryColor,
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
                // Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                // OutlinedButton(
                //     style: ButtonStyle(
                //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(30.0))),
                //     ),
                //     onPressed: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const NewOrder()),
                //       );
                //     },
                //     child: Text('New Order',
                //         style:
                //             TextStyle(color: Theme.of(context).primaryColor))),
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
                        style:
                            TextStyle(color: Theme.of(context).primaryColor))),
              ],
            ),

            Card(
              color: Theme.of(context).primaryColor,
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
              color: Theme.of(context).primaryColor,
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
