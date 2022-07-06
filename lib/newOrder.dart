import 'package:flutter/material.dart';
import 'package:walk_in/presets.dart';
import 'package:walk_in/shop.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({Key? key}) : super(key: key);

  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
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
                              color: Color.fromARGB(255, 74, 229, 126)),
                        )),
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
                              color: Color.fromARGB(255, 74, 229, 126)),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
