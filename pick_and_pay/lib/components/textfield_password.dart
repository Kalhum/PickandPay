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
    bool closePassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !closePassword,
      controller: widget.controller,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  closePassword = !closePassword;
                });
              },
              icon: Icon(closePassword ? Icons.visibility : Icons.visibility_off)),
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
