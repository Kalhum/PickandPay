
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pick_and_pay/register_screen.dart';


class LoginProvider {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();


  void LoginProviderFunction(BuildContext context) async{

    var response = await http.post(Uri.http('localhost:2000','/loginApi'),body: {'username' : username.text , 'password' : password.text});
    print(response);

    var decodeReponse = jsonDecode(utf8.decode(response.bodyBytes));
    print(decodeReponse);


    decodeReponse == 1 ? 
    showSuccessDialog(context)
    :  
    showLoginErrorDialog(context) ;

  }




void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Successfully'),
        content: Text('Your information has been successfully saved..'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Register_sreen() ));
            },
            child: Text('Goto Main menu'),
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
        title: Text('Login Error'),
        content: Text('Username & Password Not found..'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // ปิดป๊ อปอัพ
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
  
}