import 'package:flutter/material.dart';
import 'package:toku/component/item.dart';
import 'package:toku/model/itemmodel.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<ItemModel> familyMembers = const [
    ItemModel(
      sound: 'father.wav',
      jp: 'Chichioya',
      eg: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'daughter.wav',
      jp: 'Musume',
      eg: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'grand father.wav',
      jp: 'Ojīsan',
      eg: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'mother.wav',
      jp: 'Hahaoya',
      eg: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'grand mother.wav',
      jp: 'Sobo',
      eg: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'older bother.wav',
      jp: 'Nīsan',
      eg: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'older sister.wav',
      jp: 'Ane',
      eg: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'son.wav',
      jp: 'Musuko',
      eg: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'younger brohter.wav',
      jp: 'otōto',
      eg: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'younger sister.wav',
      jp: 'Imōto',
      eg: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Family Members"),
      ),
      body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) {
            return Item(
              number: familyMembers[index],
              color: Color(0xff528135),
              type: "family_members",
            );
          }),
    );
  }
}
