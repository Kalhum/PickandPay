import 'package:flutter/material.dart';
import 'package:pick_and_pay/components/btn_NavMenu.dart';
import 'package:pick_and_pay/components/my_texts.dart';
import 'package:pick_and_pay/components/product_box.dart';
import 'package:pick_and_pay/login_screen.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  // function go to Home page

  void homePage() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 180,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15)),
                  color: Colors.purple),
              child: Row(
                children: [
                  Container(
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                        onPressed: () {
                          print("proflie");
                        },
                        icon: Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.purple,
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
                              fontSize: 15,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                        MyTexts(
                            text: "500", fontSize: 30, textColor: Colors.white),
                        MyTexts(
                            text: "พอยท์",
                            fontSize: 20,
                            textColor: Colors.white),
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
                          print("setting");
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
            Stack(children: [
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
                      height: 458,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                MyTexts(
                                    text: "รายการของรางวัล",
                                    fontSize: 15,
                                    textColor: Colors.black)
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
                                    fontSize: 15,
                                    textColor: Colors.black)
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
                                    fontSize: 15,
                                    textColor: Colors.black)
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
                      BtnNavmenu(
                        textBtn: 'หน้าแรก',
                        iconBtn: Icons.home,
                        onPressed: homePage,
                      ),
                      BtnNavmenu(
                        textBtn: 'ของรางวัล',
                        iconBtn: Icons.card_giftcard,
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      BtnNavmenu(
                        textBtn: 'โปรโมชั่น',
                        iconBtn: Icons.list,
                        onPressed: () {},
                      ),
                      BtnNavmenu(
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
                left: 151.5,
                bottom: 10,
                child: Container(
                  width: 98,
                  height: 98,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(255, 222, 89, 10)),
                  child: IconButton(
                      onPressed: () {
                        print("qr_cpode btn");
                      },
                      icon: Icon(
                        Icons.qr_code,
                        size: 60,
                        color: Colors.black,
                      )),
                ),
              ),

              // end qr_code btn
            ])
          ],
        ),
      ),
    );
  }
}
