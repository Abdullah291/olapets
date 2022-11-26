import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Home_2 extends StatefulWidget {
  @override
  _Home_2State createState() => _Home_2State();
}

class _Home_2State extends State<Home_2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: Get.height * 0.3,
          decoration: BoxDecoration(
            color: KPrimaryColor,
            borderRadius: BorderRadius.circular(19),
          ),
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 55,
                decoration: BoxDecoration(
                  color: KRedColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Localização',
                      size: 21,
                      fontFamily: 'BalooChettan2-Regular',
                      weight: FontWeight.w300,
                      color: KPrimaryColor,
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.close,
                        color: KPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyText(
                      text: 'Selecione uma localização',
                      size: 18,
                      fontFamily: 'BalooChettan2-Regular',
                      weight: FontWeight.w300,
                      color: KBlackColor,
                    ),
                    spaceVertical(20),
                    MaterialButton(
                      onPressed: () {},
                      color: KSkyBlueColor,
                      elevation: 3,
                      highlightElevation: 3,
                      height: 48,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Icon awesome-exchange-alt.png',
                            height: 15,
                          ),
                          spaceHorizontal(10),
                          Text(
                            "SELECIONAR CIDADE".toUpperCase(),
                            style: TextStyle(
                              fontSize: 14,
                              color: KPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
