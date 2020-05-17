import 'file:///D:/FlutterProjects/bmi-calculator-flutter/lib/Components/bottom_bar.dart';
import 'file:///D:/FlutterProjects/bmi-calculator-flutter/lib/Components/my_card.dart';
import 'package:bmi_calculator/Constants/constants.dart';
import 'package:bmi_calculator/bmi_calculator_brain.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {

  final String bmi;
  final String message;
  final String tip;

  ResultPage({this.bmi,this.message,this.tip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  "Your Results",
                  style: kResultPageTitleStyle,
                  textAlign: TextAlign.center,
                ),
              )),
          Expanded(flex: 5, child: MyCard(color: kInactiveCardColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(message,style: message=='NORMAL'? kNormalResultTitleStyle:kAbnormalResultTitleStyle,),
              Text(bmi,style: kBMIResultStyle,),
              Text(tip,style: kBMIMessageStyle,textAlign: TextAlign.center,),
            ],
          ),)),
          BottomBar(
            title: "Re-Calculate",
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
