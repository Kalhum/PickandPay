import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final controller;
  MyTextField({super.key, required this.labelText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
