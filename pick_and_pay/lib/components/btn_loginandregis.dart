import 'package:flutter/material.dart';

class BtnLoginandregis extends StatelessWidget {
  Function()? onTap;
  final String textBtn;
  BtnLoginandregis({super.key, required this.onTap, required this.textBtn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          textBtn,
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
