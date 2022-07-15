import 'package:flutter/material.dart';

class FoodItems extends StatefulWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  State<FoodItems> createState() => _FoodItemsState();
}

enum SingingCharacter { Burgers, Fries, Wrpas }

class _FoodItemsState extends State<FoodItems> {
  SingingCharacter? _character = null;
  var array = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Food'),
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

                      value: this.array.contains(character.name),
                      onChanged: (value) {
                        setState(() {
                          // this.showvalue = value!;
                          if (value == true) {
                            array.add(character.name);
                          } else {
                            array.remove(character.name);
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
