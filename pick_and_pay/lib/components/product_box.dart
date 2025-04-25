import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  final String imageAsset;
  final double width, height;
  ProductBox(
      {super.key,
      required this.imageAsset,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20),
        width: width,
        height: height,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(245, 232, 255, 100)),
        child: Image.asset(
          imageAsset,
          fit: BoxFit.cover,
        ));
  }
}
