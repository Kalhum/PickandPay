import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/eum_btn.dart';

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
        // style: Constants.title,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold,color: textColor),
      ),
    );
  }
}
