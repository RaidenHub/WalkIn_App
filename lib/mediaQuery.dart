import 'package:flutter/material.dart';

double deviceSize(BuildContext context) => MediaQuery.of(context).size.width;

class MediaHome extends StatelessWidget {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Desktop ${deviceSize(context).toInt()}'));
  }
}

class Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Tablet ${deviceSize(context).toInt()}'));
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Mobile ${deviceSize(context).toInt()}'));
  }
}
