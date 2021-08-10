import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({ @required this.onTap, @required this.buttontitle});

  final Function  onTap;
  final String  buttontitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttontitle,
              style: kLargeButtontextstyle,
            )),
        margin: EdgeInsets.only(top: 10),
        color: kBottomcontainercolor,
        width: double.infinity,
        height: kBottomcontainerheight,
      ),
    );
  }
}
