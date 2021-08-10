import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {

Resultpage({@required this.bmiResult,@required this.interpretaion,@required this.resulttext});

  final String bmiResult;
  final String resulttext;
  final String interpretaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(

              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15.0),
            child: Text('Your Result',
            style: kTitletextstyle,
            ),
          ),
          ),
          Expanded(
              flex: 5,
              child: Reusablecard(
                colour: kActivvecardcolor,
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resulttext.toUpperCase(),
                      style: kResulttextstyle,
                    ),
                    Text(bmiResult,
                      style: kBMItextstyle
                    ),
                    Text(interpretaion,
                    style: kBodytextstyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
               ),
          ),
        BottomButton(onTap: (){
          Navigator.pop(context);
        },
            buttontitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
