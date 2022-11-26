import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Popup extends StatefulWidget {
  @override
  _PopupState createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
          color: KPrimaryColor,
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: Get.height * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        cursorColor: KGreyColor,
                        style: TextStyle(
                          color: KBlackColor,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: KGreyColor,
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                          ),
                          suffixIcon: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/loupe.png',
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                          hintText: 'Search',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: KLightGreyColor,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: KGreyColor,
                            ),
                          ),
                        ),
                      ),
                      spaceVertical(30),
                      Row(
                        children: [
                          Container(
                            child: Expanded(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/location.png',
                                    height: 22,
                                  ),
                                  spaceHorizontal(5),
                                  Text(
                                    'Nos arredores',
                                    style: TextStyle(
                                      color: KBlackColor,
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/shuffle.png',
                                    height: 22,
                                  ),
                                  spaceHorizontal(5),
                                  Text(
                                    'Mudar local',
                                    style: TextStyle(
                                      color: KBlackColor,
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
