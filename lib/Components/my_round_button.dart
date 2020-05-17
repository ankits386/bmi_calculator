import 'package:bmi_calculator/Constants/constants.dart';
import 'package:flutter/material.dart';

class MyRoundButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  MyRoundButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: kInactiveButtonColor,
      shape: CircleBorder(),
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
    );
  }
}