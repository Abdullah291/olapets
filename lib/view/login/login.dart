import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/alter_Dialouges/buscar%20_Cdade%20_1.dart';
import 'package:olapets/view/alter_Dialouges/home_2.dart';
import 'package:olapets/view/alter_Dialouges/popup.dart';
import 'package:olapets/view/login/login_Steps.dart';
import 'package:olapets/view/login/login_7.dart';
import 'package:olapets/view/widgets/clipped_Header.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class   Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ClippedHeader(
                haveBackButton: false,
                img: 'assets/Mask Group 2.png',
                imageHeight: 190,
                showText:false,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/Ola.png',
                        height: 43,
                      ),
                      spaceVertical(20),
                      Text(
                        "Com o Olá Pet Club você tem acesso à\nbenefícios e promoções exclusivas.",
                        style: TextStyle(
                          fontFamily: 'Gibson-Regular',
                          fontSize: 14,
                          color: KGreyColor,
                        ),    textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: Get.width * 0.6,
                        child: MyButton(
                          onPressed: () => Get.to(() => LoginSteps()),
                          text: 'CRIAR CONTA',
                          color: KExtraLightColor,
                        ),
                      ),
                      spaceVertical(15),
                      Container(
                        width: Get.width * 0.6,
                        child: BorderButton(
                          onPressed: () => Get.to(() => Login_7()),
                          text: 'login'.toUpperCase(),
                          textColor: KExtraLightColor,
                          textSize: 14,
                          height: 48,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
