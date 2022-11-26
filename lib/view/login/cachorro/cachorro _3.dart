import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Cachorro_3 extends StatefulWidget {
  @override
  _Cachorro_3State createState() => _Cachorro_3State();
}

class _Cachorro_3State extends State<Cachorro_3> {
  var _pageController = PageController();
  var _selectedPageIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: _selectedPageIndex,
            itemCount: 3,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(gradient: GradientColor.redGradient2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: MyText(
                            text: "Qual é o seu?",
                            size: 40,
                            color: KPrimaryColor,
                            fontFamily: 'BalooChettan2-Regular',
                            align: TextAlign.center,
                          ),
                        ),
                        spaceVertical(60),
                        Image.asset(
                          'assets/Group 22.png',
                          height: Get.height * 0.32,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyText(
                        text: "Sim eu tenho um",
                        size: 18,
                        color: KPrimaryColor,
                        weight: FontWeight.w300,
                        align: TextAlign.center,
                      ),
                      spaceVertical(15),
                      Center(
                        child: Container(
                          height: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: KPrimaryColor,
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              primary: KPrimaryColor,
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: MyText(
                                text: "Cachorro".toUpperCase(),
                                color: KPrimaryColor,
                                size: 30,
                                fontFamily: 'BalooChettan2-Regular',
                                weight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  height: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Obx(() {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: _selectedPageIndex == index
                                ? KPrimaryColor
                                : KBlackColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                spaceVertical(20),
                MyText(
                  text: "Pular",
                  size: 14,
                  color: KPrimaryColor,
                  weight: FontWeight.w300,
                  align: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
