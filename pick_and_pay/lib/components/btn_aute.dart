import 'package:flutter/material.dart';

class BtnAute extends StatelessWidget {
  Function()? onTap;
  final String imageAsset;
  BtnAute({super.key, required this.imageAsset , required this.onTap});

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
