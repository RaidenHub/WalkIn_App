import 'package:flutter/material.dart';
import 'package:walk_in/shop.dart';

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
      appBar: AppBar(
        // title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
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
                                color: Color.fromARGB(255, 74, 229, 126)))),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
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
                                builder: (context) => const NewOrder()),
                          );
                        },
                        child: Text('New Order',
                            style: TextStyle(
                                color: Color.fromARGB(255, 74, 229, 126)))),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 74, 229, 126),
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
                // Padding(padding: EdgeInsets.only(left: 15)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 74, 229, 126),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text('Add Presets')),
                  ],
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
        ],
      ),
    );
  }
}
