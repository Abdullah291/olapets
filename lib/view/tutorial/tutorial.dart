import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/Controller/tutorial_Controller/tutorial_Controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/login/login.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  TutorialController _tutorialController = Get.put(
    TutorialController(),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    child: Expanded(
                      child: PageView.builder(
                        onPageChanged: _tutorialController.selectedPageIndex,
                        itemCount:
                            _tutorialController.getTutorialModelData.length,
                        controller: _tutorialController.pageController,
                        itemBuilder: (context, index) => Tutorials(
                          image: _tutorialController
                              .getTutorialModelData[index].image,
                          title: _tutorialController
                              .getTutorialModelData[index].title,
                          subtitle: _tutorialController
                              .getTutorialModelData[index].subtitle,
                          bgColor: _tutorialController
                              .getTutorialModelData[index].bgColor,
                          haveWidget: _tutorialController
                              .getTutorialModelData[index].haveWidget,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _tutorialController.getTutorialModelData.length,
                        (index) => Obx(() {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: _tutorialController.selectedPageIndex.value ==
                                      index
                                  ? KGreyColor
                                  : KGreyColor.withOpacity(0.2),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 130,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GetBuilder<TutorialController>(
                  init: TutorialController(),
                  builder: (controller) => MyButton(
                    onPressed: () => controller.moveNext(),
                    color: KExtraLightColor,
                    text: "AVANÇAR",
                    textSize: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.off(() => Login()),
                  child: MyText(
                    text: "Pular",
                    color: KGreyColor,
                    size: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Tutorials extends StatelessWidget {
  var image, title, subtitle, bgColor;
  bool? haveWidget;

  Tutorials({
    this.image,
    this.title,
    this.subtitle,
    this.bgColor,
    this.haveWidget = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: bgColor,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: haveWidget == true
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.close,
                        size: 24,
                        color: KBlackColor,
                      ),
                    ],
                  ),
                  MyText(
                    color: KSkyBlueColor,
                    size: 33,
                    align: TextAlign.center,
                    text: "Como Usar?",
                  ),
                  MyText(
                    size: 11,
                    align: TextAlign.center,
                    text: "Navegue através do menu fixo",
                  ),
                  spaceVertical(
                    20,
                  ),
                  Image.asset(
                    'assets/Group 328.png',
                    height: Get.height * 0.42,
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.close,
                                size: 24,
                                color: KPrimaryColor,
                              ),
                            ],
                          ),
                          Image.asset(
                            image ?? null,
                            height: Get.height * 0.25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FittedBox(child: Text(title.toString(),style: GoogleFonts.balooChettan(fontWeight: FontWeight.w400,fontSize: 30,color: KPrimaryColor,height: 1.2),)),
                          FittedBox(child: Text(subtitle.toString(),style: GoogleFonts.openSans( fontWeight: FontWeight.w300,fontSize: 16,color: KPrimaryColor,
                            ),textAlign: TextAlign.center,),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
