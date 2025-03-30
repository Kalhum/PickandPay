import 'package:flutter/material.dart';

class TextfieldPassword extends StatefulWidget {
  final controller;
  const TextfieldPassword({
    super.key,
    this.controller,
  });

  @override
  State<TextfieldPassword> createState() => _TextfieldPasswordState();
}

class _TextfieldPasswordState extends State<TextfieldPassword> {
    bool openPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !openPassword,
      controller: widget.controller,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  openPassword = !openPassword;
                });
              },
              icon: Icon(openPassword ? Icons.visibility : Icons.visibility_off)),
          labelText: "Password",
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
