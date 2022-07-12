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
    return Container(
      // height: 100,
      width: 380,

      child: Column(
        children: [
          Text('dips'),
          Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8)),
          ...SingingCharacter.values
              .map((character) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
          // Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8)),
          // ListTile(
          //   tileColor: Colors.amber,
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          //   title: const Text('Cheese Dip'),
          //   leading: Radio<SingingCharacter>(
          //     fillColor: MaterialStateColor.resolveWith((states) => Colors.red),
          //     value: SingingCharacter.cheesedip,
          //     groupValue: _character,
          //     onChanged: (SingingCharacter? value) {
          //       setState(() {
          //         _character = value;
          //       });
          //     },
          //   ),
          // ),
          // Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          // ListTile(
          //   tileColor: Colors.amber,
          //   title: const Text('Periperi Dip'),
          //   leading: Radio<SingingCharacter>(
          //     fillColor: MaterialStateColor.resolveWith((states) => Colors.red),
          //     value: SingingCharacter.periperidip,
          //     groupValue: _character,
          //     onChanged: (SingingCharacter? value) {
          //       setState(() {
          //         _character = value;
          //       });
          //     },
          //   ),
          // ),
        ],
      ),
    );

    // child: Card(
    //   color: Color.fromARGB(149, 130, 248, 124),
    //   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //   child: Container(
    //     height: 80,
    //     // color: Color.fromARGB(149, 130, 248, 124),
    //     padding: EdgeInsets.symmetric(vertical: 15),
    //     margin: EdgeInsets.symmetric(horizontal: 10),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [Text('ItemName'), Text('Item PIcture')],
    //         ),
    //         Text("Price"),
    //         Text('Product Description')
    //       ],
    //     ),
    //   ),
    // ),
  }
}
