
import 'package:bmi_calculator/Constants/constants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {

  final String title;
  final Function onPress;

  BottomBar({this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
                title.toUpperCase(),
                style: kBottomBarTextStyle
            )),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}