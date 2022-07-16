import 'dart:math';

import 'package:flutter/material.dart';
import 'package:walk_in/Classes/cart/cart/cart.dart';
import 'package:walk_in/cart.dart';
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
  var names = [
    'Aloo Tikki',
    'Chicken Burger',
    'Veggie Burger',
    'Filet-o-fish Burger'
  ];
  var price = ['60', '170', '150', '180'];
  var desc = [
    'Fav Indian Burger',
    'Delicious Chicken burger',
    'The everyday classic Veggie Burger',
    'Signature fish filet patty'
  ];
  var images = [
    'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_208,h_208,c_fit/uckbx3rr87jhakb81mbs',
    'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_208,h_208,c_fit/s2rtuocxasvytgxwkuso',
    'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_208,h_150,c_fit/jgmjbt3eizxjr3uw3q1p',
    'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_208,h_208,c_fit/daeaidhf3jwcmkissaik'
  ];

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
                "McDonald's",
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
                        MaterialPageRoute(builder: (context) => const Shops()),
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

            Column(
              children: names
                  .asMap()
                  .entries
                  .map(
                    (e) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartP()));
                      },
                      child: Card(
                        color: Colors.amber.shade400,
                        child: Container(
                          height: 95,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e.value,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 5)),
                                      Text("₹" + price[e.key]),
                                      Padding(padding: EdgeInsets.only(top: 5)),
                                      Text(desc[e.key]),
                                    ],
                                  ),
                                  Image(
                                      image: NetworkImage(images[e.key],
                                          scale: 2.5))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            // Card(
            //   color: Theme.of(context).primaryColor,
            //   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //   child: Container(
            //     height: 80,
            //     // color: Color.fromARGB(149, 130, 248, 124),
            //     padding: EdgeInsets.symmetric(vertical: 15),
            //     margin: EdgeInsets.symmetric(horizontal: 10),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       crossAxisAlignment: CrossAxisAlignment.stretch,
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [Text('Chicken Burger'), Text('Item PIcture')],
            //         ),
            //         Text("₹ 170"),
            //         Text('Delicious Chicken burger')
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   color: Theme.of(context).primaryColor,
            //   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //   child: Container(
            //     height: 80,
            //     // color: Color.fromARGB(149, 130, 248, 124),
            //     padding: EdgeInsets.symmetric(vertical: 15),
            //     margin: EdgeInsets.symmetric(horizontal: 10),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       crossAxisAlignment: CrossAxisAlignment.stretch,
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [Text('Veggie Burger'), Text('Item PIcture')],
            //         ),
            //         Text("₹ 150"),
            //         Text('The everyday classic McVeggie')
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   color: Theme.of(context).primaryColor,
            //   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //   child: Container(
            //     height: 80,
            //     // color: Color.fromARGB(149, 130, 248, 124),
            //     padding: EdgeInsets.symmetric(vertical: 15),
            //     margin: EdgeInsets.symmetric(horizontal: 10),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       crossAxisAlignment: CrossAxisAlignment.stretch,
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('Filet-o-fish Burger'),
            //             Text('Item PIcture')
            //           ],
            //         ),
            //         Text("₹ 180"),
            //         Text('Signature fish filet patty')
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
