import 'dart:math';

import 'package:flutter/material.dart';
import 'package:walk_in/presets.dart';
import 'package:walk_in/shop.dart';

import 'Classes/food/food.dart';
import 'bottomNavigationBar.dart';
import 'db/db.dart';
import 'jsonToDart/food.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({Key? key}) : super(key: key);

  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  final db = DatabaseService();
  @override
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
            Container(
              // margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(padding: EdgeInsets.only(left: 5)),
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
                          child: Text(
                            'Recommended',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          )),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
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
                                  builder: (context) => const NewOrder()),
                            );
                          },
                          child: Text('New Order')),
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
                                  builder: (context) => const presets()),
                            );
                          },
                          child: Text(
                            'Presets',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          )),
                    ],
                  ),
                  FutureBuilder<List<Food?>?>(
                      future: db.getFoods(),
                      builder: (context, snapshot) {
                        if (snapshot.data != null &&
                            snapshot.data!.length != 0) {
                          return Container(
                            height: 500,
                            child: ListView.builder(
                              itemBuilder: (context, index) => Card(
                                child: Text(
                                    snapshot.data?[index]!.category! ?? "lol"),
                              ),
                              itemCount: snapshot.data?.length,
                            ),
                          );
                        } else {
                          return Text("loadin");
                        }
                      })
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
