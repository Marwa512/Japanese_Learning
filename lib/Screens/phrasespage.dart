import 'package:flutter/material.dart';
import 'package:toku/component/item.dart';
import 'package:toku/model/phrases.dart';

class PhrasesPage extends StatelessWidget {
  final List<Phrases> phrases = const [
    Phrases(
      sound: 'dont_forget_to_subscribe.wav',
      jp: 'Kōdoku suru koto o wasurenaide kudasai',
      eg: 'dont forget to subscribe',
    ),
    Phrases(
      sound: 'i_love_programming.wav',
      jp: 'Watashi wa puroguramingu daisukidesu',
      eg: 'i love  programming',
    ),
    Phrases(
      sound: 'programming_is_easy.wav',
      jp: 'Puroguramingu wa kantandesu ',
      eg: 'programming is easy',
    ),
    Phrases(
      sound: 'where_are_you_going.wav',
      jp: 'Doko ni iku no',
      eg: 'where are you going',
    ),
    Phrases(
      sound: 'what_is_your_name.wav',
      jp: 'Namae wa nandesu ka',
      eg: 'what is your name ?',
    ),
    Phrases(
      sound: 'i_love_anime.wav',
      jp: 'Watashi wa anime ga daisukidesu',
      eg: 'i love anime',
    ),
    Phrases(
      sound: 'how_are_you_feeling.wav',
      jp: 'Go kibun wa ikagadesu ka',
      eg: 'how are you feeling?',
    ),
    Phrases(
      sound: 'are_you_coming.wav',
      jp: 'Kimasu ka',
      eg: 'are you coming?',
    ),
    Phrases(
      sound: 'yes_im_coming.wav',
      jp: 'Hai watashi wa kite imasu',
      eg: 'yes i am coming',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Phrases"),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhraseItem(
              phrase: phrases[index],
              color: Color(0xff47a5c8),
            );
          }),
    );
  }
}
