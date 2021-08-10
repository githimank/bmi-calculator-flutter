import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';



class IconContent extends StatelessWidget {
  IconContent({this.category, this.separateicon});
  final String category;
  final IconData separateicon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(separateicon,size: 80,),
        SizedBox(
          height: 15,
        ),
        Text(
          category,
          style: kLabeltextstyle
        )
      ],
    );
  }
}