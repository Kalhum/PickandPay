import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pick_and_pay/login_screen.dart';

class RegisterProvider {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  void registerFunction(context) async {
    var response = await http.post(Uri.http('localhost:2000', 'registerApi'),
        body: {
          'username': username.text,
          'password': password.text,
          'email': email.text
        });
    var decodeReponse = jsonDecode(utf8.decode(response.bodyBytes));
    print(decodeReponse);

    decodeReponse == 3
        ? nullInput(context)
        : decodeReponse == 2
            ? errorRegister(context)
            : decodeReponse == 1
                ? successRegister(context, () {
                    setState() {
                      username.text = "";
                      password.text = "";
                      email.text = "";
                    }
                  })
                : "";
  }

  void nullInput(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("กรอกข้อมูลไม่ครบ"),
              content: Text("กรุณากรอกข้อมูลให้ครบ"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("ตกลง"))
              ],
            ));
  }

  void errorRegister(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("เกิดข้อผิดพลาดในการ สมัครสมาชิก"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ตกลง'))
              ],
            ));
  }

  void successRegister(BuildContext context, VoidCallback claerFields) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('ลงทะเบียนสำเร็จ'),
              content: Text('คุณได้ลงทะเบียนแล้ว'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      claerFields();
                    },
                    child: Text('ตกลง')),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_screen()),
                          (route) => false);
                    },
                    child: Text('คุณต้องการลงชื่อเข้าใช้?'))
              ],
            ));
  }
}
