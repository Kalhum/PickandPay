import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/my_buttons.dart';
import 'package:pick_and_pay/components/my_texts.dart';
import 'package:pick_and_pay/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void functionMybtn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
              MyTexts(
                text: "Pick&PayShop",
                fontSize: 30,
                textColor: Colors.black,
              ),
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
