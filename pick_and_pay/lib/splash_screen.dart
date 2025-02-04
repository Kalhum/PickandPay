import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/my_buttons.dart';
import 'package:pick_and_pay/components/my_texts.dart';
import 'package:pick_and_pay/login_screen.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  void functionMybtn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Login_screen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              // image logo
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.shop,
                size: 250,
                color: Colors.purple,
              ),
              MyTexts(text: "Pick&PayShop"),
              SizedBox(
                height: 30,
              ),
              MyButtons(onPressed: functionMybtn, textBtn: "เริ่มต้นใข้งาน")
            ],
          ),
        ),
      )),
    );
  }
}
