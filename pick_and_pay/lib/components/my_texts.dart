import 'package:flutter/material.dart';

class MyTexts extends StatelessWidget {
  final String text;

  MyTexts({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
