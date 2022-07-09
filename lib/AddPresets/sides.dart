import 'package:flutter/material.dart';

class Sides extends StatefulWidget {
  const Sides({Key? key}) : super(key: key);

  @override
  State<Sides> createState() => _SidesState();
}

class _SidesState extends State<Sides> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Text('nvube'),
    );
  }
}
