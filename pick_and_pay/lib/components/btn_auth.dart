import 'package:flutter/material.dart';

class BtnAuth extends StatelessWidget {
  final Function()? onTap;
  final String imageAsset;
  BtnAuth({super.key, required this.imageAsset , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        width: 90,
        child: Image.asset(imageAsset),
      ),
    );
  }
}
