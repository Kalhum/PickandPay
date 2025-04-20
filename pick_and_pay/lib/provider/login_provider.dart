import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pick_and_pay/config/appconfig.dart';
import 'package:pick_and_pay/register_screen.dart';


class LoginProvider {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void LoginProviderFunction(BuildContext context) async {
    // var response = await http.post(Uri.http(AppConfig.baseUrl, '/loginApi'),
    //     body: {'username': username.text, 'password': password.text});
    var response = await NetworkConfig().postApi('/loginApi',
        {'username': username.text, 'password': password.text});

    print(response);

    
    var decodeReponse = jsonDecode(utf8.decode(response.bodyBytes));
    print(decodeReponse);

    decodeReponse == 3
        ? showNullData(context)
        : decodeReponse == 0
            ? showLoginErrorDialog(context)
            : decodeReponse == 1
                ? showSuccessDialog(context)
                : "";
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('เข้าสู่ระบบ สำเร็จ'),
          content: Text('คุณได้เข้าสู่ระบบแล้ว'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Register_sreen()));
              },
              child: Text('ตกลง'),
            ),
          ],
        );
      },
    );
  }

  void showLoginErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('เข้าระบบ ผิดพลาด'),
          content: Text('รหัส หรือ ชื่อผู้ใช้ ไม่ถูกต้อง'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // ปิดป๊ อปอัพ
              },
              child: Text('ตกลง'),
            ),
          ],
        );
      },
    );
  }

  void showNullData(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("ไม่ได้กรอกข้อมูล"),
              content: Text("กรุณากรอกข้อมูลให้ครบถ้วน"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("ตกลง"))
              ],
            ));
  }
}
