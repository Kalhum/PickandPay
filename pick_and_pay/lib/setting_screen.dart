import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/eum_btn.dart';
import 'package:pick_and_pay/components/my_textfield.dart';
import 'package:pick_and_pay/components/my_texts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xFFB15AF3),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Icon(Icons.person,
                                  size: 40,
                                  color: Color(0xFFB15AF3),
                                  weight: 100)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyTexts(
                              text: "สวัสดี' Kalhum",
                              style: Constants.textBodywhite,
                            ),
                            MyTexts(
                                text: "Setting", style: Constants.textBodywhite)
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'กลับ',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      MyTexts(
                        text: "การตั้งค่าแอพลิเคชั่น",
                        style: Constants.textTitleBlack,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                              backgroundColor: Color(0xFFB15AF3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                MyTexts(
                                  text: "แก้ไขข้อมูลส่วนตัว",
                                  style: Constants.textBodywhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                              backgroundColor: Color(0xFFB15AF3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.notifications_none,
                                  color: Colors.white,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                MyTexts(
                                  text: "ตั้งค่าการแจ้งเตือน",
                                  style: Constants.textBodywhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                              backgroundColor: Color(0xFFB15AF3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.language,
                                  color: Colors.white,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                MyTexts(
                                  text: "การตั้งค่าภาษา",
                                  style: Constants.textBodywhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Color(0xFFE64942),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyTexts(
                            text: "ออกจากระบบ",
                            style: Constants.textBodywhite,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.exit_to_app_outlined,
                            color: Colors.white,
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
