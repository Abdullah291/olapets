import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olapets/constant/constant.dart';

class MyText extends StatelessWidget {
  var text, color, weight, align,decoration,fontFamily;
  double? size;

  MyText({
    this.text,
    this.size,
    this.fontFamily = 'Gibson-Regular',
    this.decoration = TextDecoration.none,
    this.color = KBlackColor,
    this.weight,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
        decoration: decoration,
        fontFamily: '$fontFamily',
      ),
      textAlign: align,
    );
  }
}
