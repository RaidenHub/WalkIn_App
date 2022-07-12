import 'package:flutter/material.dart';
import 'package:walk_in/AddPresets/beverages.dart';
import 'package:walk_in/AddPresets/dips.dart';
import 'package:walk_in/AddPresets/foodItems.dart';
import 'package:walk_in/AddPresets/sides.dart';
import 'package:walk_in/AddPresets/toppings.dart';

import 'bottomNavigationBar.dart';

class NewPresets extends StatefulWidget {
  const NewPresets({Key? key}) : super(key: key);

  @override
  State<NewPresets> createState() => _NewPresetsState();
}

class _NewPresetsState extends State<NewPresets> {
  @override
  int index = 0;
  var names = ['Food Items', 'Sides', 'Toppings', 'Beverages', 'Dips'];
  static const List<Widget> _widgetOptions = [
    FoodItems(),
    Sides(),
    Toppings(),
    Beverages(),
    Dips(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: names
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ChoiceChip(
                              selectedColor: Color.fromARGB(255, 74, 229, 126),
                              label: Text(e),
                              selected: names.indexOf(e) == index,
                              onSelected: (bool selected) {
                                setState(() {
                                  if (selected) {
                                    index = names.indexOf(e);
                                  }
                                });
                              },
                            ),
                          ))
                      .toList())),
          Container(
            child: IndexedStack(index: index, children: _widgetOptions),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
