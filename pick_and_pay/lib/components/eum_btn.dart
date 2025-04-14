import 'package:flutter/material.dart';

enum BtnType { save, delete, submit }

class Constants {
  static const String SUCCESS_MESSAGE =
      "You will be contacted by us very soon.";
  static const Color bgColor = Colors.red;
  static const TextStyle title =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
  static const TextStyle textBody =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
  static const Widget text = Text("Welcome");
}
