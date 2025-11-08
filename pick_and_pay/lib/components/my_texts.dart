import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/eum_btn.dart';

class MyTexts extends StatelessWidget {
  final String text;
  final TextStyle style;

  MyTexts({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
