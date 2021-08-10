import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class Roundiconbutton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  Roundiconbutton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
