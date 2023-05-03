import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color, this.text, this.ontap});
  String? text;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
