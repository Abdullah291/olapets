import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/Controller/cachorro_Controller/cachorro_Controller.dart';
import 'package:olapets/Controller/gato_Controller/gato_Controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Cachorro extends StatefulWidget {
  @override
  _CachorroState createState() => _CachorroState();
}

class _CachorroState extends State<Cachorro> {
  CachorroController _cachorroController = Get.put(CachorroController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(gradient: GradientColor.redGradient2),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => _cachorroController.moveBack(),
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: KPrimaryColor,
                      size: 20,
                    ),
                    spaceHorizontal(10),
                    Text(
                        "Voltar",
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: KPrimaryColor,
                      ),

                    ),
                  ],
                ),
              ),
            ),
            //Heading
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/Mask Group 2.png',
                          height: 94,
                        ),
                        spaceHorizontal(10),
                        Text(
                          "Cadastre\nseu cachorro",
                          style: GoogleFonts.balooChettan(
                            fontSize:  30,
                            fontWeight: FontWeight.w400,
                            color: KPrimaryColor,
                            height: 1.1
                          ),
                        )
                      ],
                    ),
                    //Widgets
                    GetBuilder<CachorroController>(
                      init: CachorroController(),
                      builder: (controller) => Container(
                        child: controller.getData[controller.index],
                      ),
                    ),
                    //Steps
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: Get.width * 0.5,
                            child: MyButton2(
                              onPressed: () => _cachorroController.moveNext(),
                              color: KPrimaryColor,
                              text: "Proximo".toUpperCase(),
                              textSize: 14,
                              textColor: KRedColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(),
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
