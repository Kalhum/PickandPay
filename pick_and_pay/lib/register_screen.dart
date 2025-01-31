import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/btn_aute.dart';
import 'package:pick_and_pay/components/my_textfield.dart';

class Register_sreen extends StatefulWidget {
  const Register_sreen({super.key});

  @override
  State<Register_sreen> createState() => _Register_sreenState();
}

class _Register_sreenState extends State<Register_sreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 90),
                decoration: BoxDecoration(color: Colors.purple),
                child: Text(
                  "สมัครสมาชิก",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
                top: 20,
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
                )),
            Positioned.fill(
                top: 150,
                child: Container(
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
                      SizedBox(
                        height: 15,
                      ),
                      MyTextField(labelText: "Email"),
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
                            onPressed: () {},
                            child: Text(
                              "สมัครสมาชิก",
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
                              "หรือสมัครสมาชิกด้วย",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
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
                      BtnAute(
                        imageAsset: "assets/images/Google_Logo.png",
                        onTap: () {
                          print("aute btn");
                        },
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
