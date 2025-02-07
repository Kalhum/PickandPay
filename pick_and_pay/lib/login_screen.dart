import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/btn_auth.dart';
import 'package:pick_and_pay/components/btn_loginandregis.dart';
import 'package:pick_and_pay/components/my_textfield.dart';
import 'package:pick_and_pay/home_screen.dart';
import 'package:pick_and_pay/register_screen.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  // function ontap button register and login components

  void onTapBtnReLog() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Register_sreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 38,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Text(
                "เข้าสู่ระบบ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 598,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  MyTextField(
                    labelText: 'Username',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyTextField(labelText: "Password"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "ลืมรหัสผ่าน ?",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home_screen()));
                        },
                        child: Text(
                          "เข้าสู่ระบบ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ยังไม่ได้สมัครสมาชิก ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      // btn login components
                      BtnLoginandregis(
                          onTap: onTapBtnReLog, textBtn: "สมัครสมาชิก")
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "หรือเข้าสู่ระบบด้วย",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BtnAuth(
                    imageAsset: "assets/images/Google_Logo.png",
                    onTap: () {
                      print("aute btn");
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
