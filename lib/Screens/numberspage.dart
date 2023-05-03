import 'package:flutter/material.dart';
import 'package:toku/component/item.dart';
import 'package:toku/model/itemmodel.dart';

class NumberScreen extends StatelessWidget {
  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'number_one_sound.mp3',
      jp: 'ichi',
      eg: 'one',
      image: 'assets/images/numbers/number_one.png',
    ),
    ItemModel(
      sound: 'number_two_sound.mp3',
      jp: 'Ni',
      eg: 'two',
      image: 'assets/images/numbers/number_two.png',
    ),
    ItemModel(
      sound: 'number_three_sound.mp3',
      jp: 'San',
      eg: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    ItemModel(
      sound: 'number_four_sound.mp3',
      jp: 'Shi',
      eg: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    ItemModel(
      sound: 'number_five_sound.mp3',
      jp: 'Go',
      eg: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    ItemModel(
      sound: 'number_six_sound.mp3',
      jp: 'Roku',
      eg: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    ItemModel(
      sound: 'number_seven_sound.mp3',
      jp: 'Sebun',
      eg: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    ItemModel(
      sound: 'number_eight_sound.mp3',
      jp: 'hachi',
      eg: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    ItemModel(
      sound: 'number_nine_sound.mp3',
      jp: 'Kyū',
      eg: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    ItemModel(
      sound: 'number_ten_sound.mp3',
      jp: 'Jū',
      eg: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Numbers"),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(
              number: numbers[index],
              color: Color(0xfff99537),
              type: 'numbers',
            );
          }),
    );
  }
}
