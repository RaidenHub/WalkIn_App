import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:walk_in/AddPresets/carousel.dart';
import 'package:walk_in/bottomNavigationBar.dart';
import 'package:walk_in/cart.dart';
import 'package:walk_in/login.dart';
import 'package:walk_in/profile.dart';
import 'package:walk_in/shop.dart';
import 'package:walk_in/cart.dart';
import 'package:stripe_payment/stripe_payment.dart';

void main() {
  runApp(MaterialApp(
    home: Payment(),
  ));
}

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  var _source = null;
  @override
  initState() {
    super.initState();
    StripePayment.setOptions(StripeOptions(
        publishableKey:
            "pk_test_51LJFSTSBve02oYMv5wPDWgecH8OdzOD9opy79xLgz5DL1kqPimWKeqGzPml5aVo8NR2tdfnSq5nvAycwd61toxCF001oqGBw11",
        merchantId: "YOUR_MERCHANT_ID",
        androidPayMode: 'test'));
  }

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
          // onPressed: () {
          //   StripePayment.paymentRequestWithCardForm(CardFormPaymentRequest(
          //       // type: 'ideal',
          //       // amount: 2102,
          //       // currency: 'eur',
          //       // returnURL: 'example://stripe-redirect',
          //       )).then((source) {
          //     // _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Received ${source.sourceId}')));
          //     print('Received ${source.id}');
          //     setState(() {
          //       _source = source;
          //     });
          //   });
          //   // .catchError(setError);
          // },
          onPressed: () {
            if (Platform.isIOS) {
              // _controller.jumpTo(450);
            }
            StripePayment.paymentRequestWithNativePay(
              androidPayOptions: AndroidPayPaymentRequest(
                totalPrice: "2.40",
                currencyCode: "INR",
              ),
              applePayOptions: ApplePayPaymentOptions(
                countryCode: 'DE',
                currencyCode: 'EUR',
                items: [
                  ApplePayItem(
                    label: 'Test',
                    amount: '27',
                  )
                ],
              ),
            ).then((token) {
              setState(() {
                // _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Received ${token.tokenId}')));
                print(token);
                _source = token;
              });
            });
            // .catchError(setError);
          },
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
    return MaterialApp(
      title: 'WalkIn',
      theme: ThemeData(primaryColor: Colors.amber[800]),
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

  var shops = ['shop1', 'shop2', 'shop3', 'shop4'];
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
                child: Row(
                  children: shops
                      .map((e) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Shops()));
                            },
                            child: Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.only(left: 15, top: 10),
                              child: Container(
                                // shape: RoundedRectangleBorder(
                                //     borderRadius: BorderRadius.circular(20)),
                                color: Theme.of(context).primaryColor,
                                child: Text(
                                  (e),
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
