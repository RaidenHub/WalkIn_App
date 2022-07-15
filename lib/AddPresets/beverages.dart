import 'package:flutter/material.dart';

class Beverages extends StatefulWidget {
  const Beverages({Key? key}) : super(key: key);

  @override
  State<Beverages> createState() => _BeveragesState();
}

enum SingingCharacter { Coke, Pepsi, Shakes }

class _BeveragesState extends State<Beverages> {
  SingingCharacter? _character = null;
  bool showvalue = false;
  var beverages = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Bev'),
        // Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8)),
        ...SingingCharacter.values
            .map((character) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ListTile(
                    // tileColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    // title: const Text('Cheese Dip'),
                    title: Text(character.name),
                    leading: Checkbox(
                      // checkColor: Colors.amber.shade800,
                      activeColor: Colors.amber[800],

                      value: this.beverages.contains(character.name),
                      onChanged: (value) {
                        setState(() {
                          this.showvalue = value!;
                          if (value == true) {
                            beverages.add(character.name);
                          } else {
                            beverages.remove(character.name);
                          }
                          ;
                        });
                      },
                    ),
                  ),
                ))
            .toList(),
      ],
    );
  }
}
