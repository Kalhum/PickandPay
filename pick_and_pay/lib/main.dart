import 'package:flutter/material.dart';
import 'package:pick_and_pay/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Login_screen());
  }
}
