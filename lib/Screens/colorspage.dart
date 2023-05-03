import 'package:flutter/material.dart';
import 'package:toku/component/item.dart';
import 'package:toku/model/itemmodel.dart';

class ColorPage extends StatelessWidget {
  final List<ItemModel> colors = const [
    ItemModel(
      sound: 'black.wav',
      jp: 'Burakku',
      eg: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      sound: 'brown.wav',
      jp: 'Chairo',
      eg: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: 'dusty yellow.wav',
      jp: 'Hokori ppoi kiiro',
      eg: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      sound: 'gray.wav',
      jp: 'Gurē',
      eg: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemModel(
      sound: 'green.wav',
      jp: 'Midori',
      eg: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: 'red.wav',
      jp: 'Aka',
      eg: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Colors "),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Item(
              number: colors[index],
              color: Color(0xff7d3f9e),
              type: 'colors',
            );
          }),
    );
  }
}
