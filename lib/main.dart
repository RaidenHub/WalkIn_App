import 'dart:io';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:provider/provider.dart';
import 'package:walk_in/AddPresets/carousel.dart';
import 'package:walk_in/bottomNavigationBar.dart';
import 'package:walk_in/cart.dart';
import 'package:walk_in/db/db.dart';
import 'package:walk_in/login.dart';
import 'package:walk_in/newOrder.dart';
import 'package:walk_in/presets.dart';
import 'package:walk_in/profile.dart';
import 'package:walk_in/shop.dart';
import 'package:walk_in/cart.dart';
import 'package:walk_in/utils/payment.dart';
import 'Classes/shopper/shopper/shopper.dart';
import 'Classes/user/user/user.dart';
import 'GraphQl/client.dart';
import 'db/authToken.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  var _source = null;
  var result = null;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Center(
        // evalued button
        child: ElevatedButton(
            child: Text("Payment"),
            onPressed: () async {
              // try {
              //   result = await client.query(options);
              //   var foods = result.data['getFoods']
              //       .map((fo) => Food.fromJson(fo))
              //       .toList();
              //   print(foods[0].dips[0].name);
              // } catch (e) {
              //   print(e);
              // }
              await payment(
                  amount: 1221,
                  userId: "userId",
                  name: "name",
                  email: 'email@gmail.com',
                  phone: "1234567890");
            }

            // },

            ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => AuthToken(),
          ),
        ],
        builder: (context, _) {
          return MaterialApp(
            title: 'WalkIn',
            theme: ThemeData(primaryColor: Colors.amber[800]),
            home: MyHomePage(
              title: '',
            ),
          );
        });
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
  final db = DatabaseService();

  // var shops = ['shop1', 'shop2', 'shop3', 'shop4'];
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Carousel(),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 20, bottom: 15)),
                  Text(
                    'Near You',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: FutureBuilder<List<Shopper?>>(
                  future: db.getShops(),
                  builder: (context, snapshot) {
                    if (snapshot.data != null && snapshot.data!.length != 0) {
                      return Row(
                        children: snapshot.data!
                            .map((e) => InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Shops(
                                                  shopId: e!.id!,
                                                )));
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    margin: EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(e!.image!),
                                              fit: BoxFit.cover)),
                                      // shape: RoundedRectangleBorder(
                                      //     borderRadius: BorderRadius.circular(20)),

                                      // color: Theme.of(context).primaryColor,
                                      child: Text(
                                        e.name ?? "Prashannt 1",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            height: 2,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      );
                    }
                    return Text("Loadinggggg....");
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(index: 0),
    );
  }
}
