import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final controllor;
  MyTextField({super.key, required this.labelText, this.controllor});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllor,
      decoration: InputDecoration(
          labelText: labelText,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.purple,
              ),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.grey),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
