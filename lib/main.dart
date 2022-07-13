import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:walk_in/AddPresets/carousel.dart';
import 'package:walk_in/bottomNavigationBar.dart';
import 'package:walk_in/cart.dart';
import 'package:walk_in/login.dart';
import 'package:walk_in/profile.dart';
import 'package:walk_in/shop.dart';
import 'package:walk_in/cart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  String stripePublishableKey =
      "sk_test_51LJFSTSBve02oYMv4GD21Ai8uDiuPem1gcp2wHGSZiLgiXS3JW3NtQSLJZtMaKKUdIy2j5TMyLoGgcTCLRd1lxW6004AHeuPJd";
  Stripe.publishableKey = stripePublishableKey;

  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

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
            await Stripe.instance.createPaymentMethod(
              const PaymentMethodParams.card(
                paymentMethodData: PaymentMethodData(
                  billingDetails: BillingDetails(
                    email: "test@gmail.com",
                    address: Address(
                        city: "city",
                        country: "country",
                        line1: "line1",
                        line2: "line2",
                        postalCode: "postalCode",
                        state: 'state'),
                  ),
                  shippingDetails: ShippingDetails(
                    address: Address(
                        city: "city",
                        country: "country",
                        line1: "line1",
                        line2: "line2",
                        postalCode: "postalCode",
                        state: 'state'),
                  ),
                ),
              ),
            );
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
