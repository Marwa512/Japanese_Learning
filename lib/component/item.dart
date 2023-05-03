import 'package:flutter/material.dart';
import 'package:toku/model/itemmodel.dart';
import 'package:toku/model/phrases.dart';

import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  const Item({required this.number, required this.color, required this.type});
  final ItemModel number;
  final Color color;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Container(color: Color(0xfffff4da), child: Image.asset(number.image)),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jp,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.eg,
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/${type}/');
                player.play(number.sound);
              })
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    required this.phrase,
    required this.color,
  });
  final Phrases phrase;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jp,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  phrase.eg,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/phrases/');
                  player.play(phrase.sound);
                })
          ],
        ),
      ),
    );
  }
}
