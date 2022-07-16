import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walk_in/presets.dart';

import 'bottomNavigationBar.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Container(
                  width: double.infinity,
                  height: 150,
                  child: Container(
                    alignment: Alignment(0.0, 2.5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://s3.ap-south-1.amazonaws.com/prashantm2001.temp/images+(1).jpeg"),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Pavan Kulkarni",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Email: test@test.com",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black45,
                    // letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Phone No: 1234567890",
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black45,
                    // letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => presets()));
                },
                child: Text(
                  "Your Presets",
                  style: TextStyle(
                      letterSpacing: 2.0, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
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
                                    fontSize: 15, fontWeight: FontWeight.bold),
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
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(index: 2));
  }
}
