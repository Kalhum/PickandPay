import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/btn_nav_menu.dart';
import 'package:pick_and_pay/components/eum_btn.dart';
import 'package:pick_and_pay/components/my_texts.dart';
import 'package:pick_and_pay/components/product_box.dart';
import 'package:pick_and_pay/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // function go to Home page

  void homePage() {
    Navigator.pop(context);
    // BtnType.save;
    // btn_receive(BtnType.save);

    // Constants.SUCCESS_MESSAGE;
  }

  // Widget btn_receive(BtnType type) {
  //   if (type == BtnType.save) {
  //     // do something
  //     return TextField(
  //       decoration: InputDecoration(labelText: "username"),
  //     );
  //   }
  //   return Container(
  //     width: 100,
  //     height: 100,
  //     decoration: BoxDecoration(
  //       color: Colors.orange,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15)),
                  color: Color(0xFFB15AF3)),
              child: Row(
                children: [
                  Container(
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          size: 60,
                          color: Color(0xFFB15AF3),
                        ),
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyTexts(
                              text: "สวัสดี' Kalhum",
                              style: Constants.title,
                            ),
                          ],
                        ),
                        MyTexts(
                          text: "500",
                          style: Constants.title,
                        ),
                        MyTexts(
                          text: "พอยท์",
                          style: Constants.title,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingScreen()));
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Icon(Icons.settings, size: 30),
                              SizedBox(
                                width: 15,
                              ),
                              Text("การตั้งค่า")
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF3F3F3),
                            prefixIcon: Icon(Icons.search),
                            hintText: "ค้นหารายการสินค้า",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 559,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              // btn_receive(BtnType.save),
                              // btn_receive(BtnType.delete),
                              Row(
                                children: [
                                  MyTexts(
                                    text: "รายการของรางวัล",
                                    style: Constants.textBodyBlack,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 150,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemBuilder: (context, index) => ProductBox(
                                          imageAsset:
                                              "assets/images/promotion.png",
                                          width: 150,
                                          height: 150,
                                        )),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  MyTexts(
                                    text: "รายการสินค้า",
                                    style: Constants.textBodyBlack,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 150,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        child: ProductBox(
                                          imageAsset:
                                              "assets/images/product2.png",
                                          width: 150,
                                          height: 150,
                                        ),
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  MyTexts(
                                    text: "รายการสินค้าล่าสุด",
                                    style: Constants.textBodyBlack,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 150,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) => ProductBox(
                                    imageAsset: "assets/images/product1.png",
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 150,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 70,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 54, 54, 1),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BtnNavMenu(
                          textBtn: 'หน้าแรก',
                          iconBtn: Icons.home,
                          onPressed: homePage,
                        ),
                        BtnNavMenu(
                          textBtn: 'ของรางวัล',
                          iconBtn: Icons.card_giftcard,
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        BtnNavMenu(
                          textBtn: 'โปรโมชั่น',
                          iconBtn: Icons.list,
                          onPressed: () {},
                        ),
                        BtnNavMenu(
                          textBtn: 'ประวัติ',
                          iconBtn: Icons.history,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),

                // btn  qr_code
                Positioned(
                  left: 175,
                  bottom: 20,
                  child: Container(
                    width: 98,
                    height: 98,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(255, 222, 89, 1)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.qr_code,
                          size: 60,
                          color: Colors.black,
                        )),
                  ),
                ),
                // end qr_code btn
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
