import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  CustomText({Key? key, required this.color, required this.fontSize, required this.fontWeight, required this.text}):super(key: key);
  FontWeight fontWeight;
  double fontSize;
  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontFamily: 'Titles'
      ),
    );
  }
}