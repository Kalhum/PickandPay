import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final Function()? onPressed ;
  final String textBtn;
  MyButtons({super.key , required this.onPressed ,required this.textBtn});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          onPressed:onPressed,
          child: Text(
            textBtn,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
    );
  }
}
