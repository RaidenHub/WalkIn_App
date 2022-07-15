import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black54,
                      width: 3,
                    )),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber.shade50,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text("userImage"),
                      ),
                    ),
                    Column(
                      children: [Text("Name"), Text('Info')],
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black54,
                      width: 3,
                    )),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [Text('Address n all')],
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black54,
                      width: 3,
                    )),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [Text('Previous Orders')],
                ),
              ),
              //Center(child: Text('This is profile')),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        index: 2,
      ),
    );
  }
}
