import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/Controller/pet_Exotico_Controller/pet_Exotico_Controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class PetExotico extends StatefulWidget {
  @override
  _PetExoticoState createState() => _PetExoticoState();
}

class _PetExoticoState extends State<PetExotico> {
  PetExoticoController _petExoticoController = Get.put(PetExoticoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(gradient: GradientColor.skyBlueGradient),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => _petExoticoController.moveBack(),
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
                    MyText(
                      size: 14,
                      color: KPrimaryColor,
                      text: "Voltar",
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
                          'assets/Mask Group 15.png',
                          height: 94,
                        ),
                        spaceHorizontal(10),
                        MyText(
                          text: "Cadastre seu\nAnimal Exótico",
                          size: 28,
                          weight: FontWeight.bold,
                          color: KPrimaryColor,
                        ),
                      ],
                    ),
                    //Widgets
                    GetBuilder<PetExoticoController>(
                      init: PetExoticoController(),
                      builder: (controller) => Container(
                        child: controller.getData[controller.index],
                      ),
                    ),
                    //Steps
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Container(
                            width: Get.width * 0.5,
                            child: MyButton2(
                              onPressed: () => _petExoticoController.moveNext(),
                              color: KPrimaryColor,
                              text: "Proximo".toUpperCase(),
                              textSize: 14,
                              textColor: KSkyBlueColor,
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
