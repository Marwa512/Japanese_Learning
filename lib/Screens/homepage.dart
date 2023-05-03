import 'package:flutter/material.dart';
import 'package:toku/Screens/familymembers.dart';
import 'package:toku/Screens/numberspage.dart';
import 'package:toku/Screens/phrasespage.dart';
import 'package:toku/component/categoryItem.dart';

import 'colorspage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff4da),
      appBar: AppBar(
        title: Text("Toku"),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            color: Color(0xfff99537),
            text: "Numbers",
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NumberScreen(),
                  ));
            },
          ),
          Category(
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FamilyMembersPage(),
                  ));
            },
            color: Color(0xff528135),
            text: "Family Members",
          ),
          Category(
              color: Color(0xff7d3f9e),
              text: "Colors",
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorPage(),
                    ));
              }),
          Category(
            color: Color(0xff47a5c8),
            text: "Phrases",
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhrasesPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
