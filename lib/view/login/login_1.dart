import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/login/login_Steps.dart';
import 'package:olapets/view/login/login_7.dart';
import 'package:olapets/view/widgets/clipped_Header.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Login_1 extends StatefulWidget {
  @override
  _Login_1State createState() => _Login_1State();
}

class _Login_1State extends State<Login_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ClippedHeader(
                haveBackButton: false,
                img: 'assets/Group 11.png',
                imageHeight: Get.height * 0.26,
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
                      MyText(
                        text:
                            "Com o Olá Pet Club você tem acesso à\nbenefícios e promoções exclusivas.",
                        size: 14,
                        color: KGreyColor,
                        align: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: Get.width * 0.6,
                        height: 52,
                        decoration: BoxDecoration(
                            color: KLightGreyColor2.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyText(
                              text: 'Entrar com e-mail',
                              size: 14,
                            ),
                            Row(
                              children: [
                                VerticalDivider(
                                  color: KPrimaryColor,
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 1.5,
                                ),
                                spaceHorizontal(10),
                                Image.asset(
                                  'assets/Mask Group 1.png',
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      spaceVertical(15),
                      Container(
                        width: Get.width * 0.6,
                        height: 52,
                        decoration: BoxDecoration(
                            color: KLightGreyColor2.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyText(
                              text: 'Entrar com Facebook',
                              size: 14,
                            ),
                            Row(
                              children: [
                                VerticalDivider(
                                  color: KPrimaryColor,
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 1.5,
                                ),
                                spaceHorizontal(10),
                                Image.asset(
                                  'assets/facebook.png',
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      spaceVertical(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: MyText(
                              text: "Criar conta",
                              size: 14,
                              color: KRedColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: MyText(
                              color: KGreyColor,
                              text: '-',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: MyText(
                              text: "Pular",
                              size: 14,
                              color: KRedColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
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
