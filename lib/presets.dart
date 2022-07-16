import 'package:flutter/material.dart';
import 'package:walk_in/newPresets.dart';
import 'package:walk_in/shop.dart';

import 'bottomNavigationBar.dart';
import 'cart.dart';
import 'newOrder.dart';

class presets extends StatefulWidget {
  const presets({Key? key}) : super(key: key);

  @override
  State<presets> createState() => _presetsState();
}

class _presetsState extends State<presets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(widget.title),
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber.shade800,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewPresets()),
          );
        },
        child: Icon(Icons.add),
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
              color: Theme.of(context).primaryColor,
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
          Container(
            // margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5)),
                    OutlinedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Shops()),
                          );
                        },
                        child: Text('Recommended',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor))),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    // OutlinedButton(
                    //     style: ButtonStyle(
                    //       shape: MaterialStateProperty.all(
                    //           RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(30.0))),
                    //     ),
                    //     onPressed: () {
                    //       Navigator.pushReplacement(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => const NewOrder()),
                    //       );
                    //     },
                    //     child: Text('New Order',
                    //         style: TextStyle(
                    //             color: Theme.of(context).primaryColor))),
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const presets()),
                          );
                        },
                        child: Text('Presets')),
                  ],
                ),
                // Padding(padding: EdgeInsets.only(right: 15)),

                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     Padding(padding: EdgeInsets.only(left: 200)),
                //     ElevatedButton.icon(
                //         style: ElevatedButton.styleFrom(
                //             primary: Theme.of(context).primaryColor,
                //             padding: EdgeInsets.symmetric(horizontal: 10),
                //             shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(30))),
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const NewPresets()),
                //           );
                //         },
                //         icon: Icon(Icons.add),
                //         label: Text('Add Presets')),
                //   ],
                // ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const CartP()));
                  },
                  child: Card(
                    color: Colors.amber.shade400,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Container(
                      height: 90,
                      // color: Color.fromARGB(149, 130, 248, 124),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aloo Tikki',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Text("₹60"),
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Text('Fav Indian Burger')
                                ],
                              ),
                              Image.network(
                                'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_208,h_208,c_fit/uckbx3rr87jhakb81mbs',
                                scale: 3,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
