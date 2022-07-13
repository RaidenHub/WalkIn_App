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
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Container(child: Text('pro')),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        index: 2,
      ),
    );
  }
}
