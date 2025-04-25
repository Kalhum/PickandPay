import 'package:flutter/material.dart';

class BtnNavMenu extends StatelessWidget {
  final String textBtn;
  final IconData iconBtn;
  final void Function()? onPressed;
  BtnNavMenu(
      {super.key,
      required this.textBtn,
      required this.iconBtn,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            minimumSize: const Size(25, 20), side: BorderSide.none),
        onPressed: onPressed,
        child: Column(
          children: [
            Icon(
              iconBtn,
              color: Colors.white,
            ),
            Text(
              textBtn,
              style: TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}
