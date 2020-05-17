import 'package:bmi_calculator/Constants/constants.dart';
import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  final String iconLabel;
  final IconData icon;
  final Color color;
  IconContent({this.iconLabel, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color : color,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}