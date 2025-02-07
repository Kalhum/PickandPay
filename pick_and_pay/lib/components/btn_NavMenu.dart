import 'package:flutter/material.dart';

class BtnNavmenu extends StatelessWidget {
  final String textBtn;
  final IconData iconBtn;
  void Function()? onPressed ;
  BtnNavmenu({super.key, required this.textBtn, required this.iconBtn, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // ทำให้พื้นหลังโปร่งใส
          elevation: 0, // ลดเงาของปุ่ม
          padding: EdgeInsets.symmetric(horizontal: 10)),
      child: Column(
        children: [
          Icon(
            iconBtn,
            size: 25,
            color: Colors.white,
          ),
          Text(
            textBtn,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
