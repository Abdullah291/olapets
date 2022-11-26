import 'package:flutter/material.dart';

const KPrimaryColor = Color(0xffffffff);
const KRedColor = Color(0xffDE3359);
const KLightRedColor = Color(0xffE24B6D);
const KExtraLightColor= Color(0xffCC4160);
const KParrotColor = Color(0xff98BE2B);
const KLightParrotColor = Color(0xffAEC46F);
const KBlackColor = Color(0xff000000);
const KSkyBlueColor = Color(0xff44B3AC);
const KLightSkyBlueColor = Color(0xff38D5CA);
const KGreyColor = Color(0xff898989);
const KLightGreyColor = Color(0xffEEEEEE);
const KLightGreyColor2 = Color(0xff78849E);
const KLightGreyColor3 = Color(0xffB5B5B5);
const KGrey2Color= Color(0xff8AA8A6);


BoxDecoration circle100=BoxDecoration(
  border: Border.all(color: KLightGreyColor3, width: 1.5),
  borderRadius: BorderRadius.circular(100),
);
//Gradient Colors
class GradientColor{
  static var redGradient = LinearGradient(
    colors: [
      KLightRedColor,
      KRedColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static var redGradient2 = LinearGradient(
    colors: [
      KLightRedColor,
      KRedColor,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static var greenGradient = LinearGradient(
    colors: [
      KLightParrotColor,
      KParrotColor,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static var skyBlueGradient = LinearGradient(
    colors: [
      KLightSkyBlueColor,
      KSkyBlueColor,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
