import 'package:flutter/material.dart';

class MyTexts extends StatelessWidget {
  final String text;
  final double fontSize ;
  final Color textColor;


  MyTexts({super.key, required this.text, required this.fontSize, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold,color: textColor),
      ),
    );
  }
}
