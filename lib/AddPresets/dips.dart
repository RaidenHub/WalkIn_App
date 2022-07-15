import 'package:flutter/material.dart';

class Dips extends StatefulWidget {
  const Dips({Key? key}) : super(key: key);

  @override
  State<Dips> createState() => _DipsState();
}

enum SingingCharacter { cheesedip, periperidip }

var dips = ['cheesedip', 'periperidip', 'hello'];

class _DipsState extends State<Dips> {
  SingingCharacter? _character = SingingCharacter.cheesedip;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('dips'),
        // Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8)),
        ...SingingCharacter.values
            .map((character) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ListTile(
                      // tileColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // title: const Text('Cheese Dip'),
                      title: Text(character.toString()),
                      leading: Radio<SingingCharacter>(
                        value: character,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      )),
                ))
            .toList(),
      ],
    );
  }
}
