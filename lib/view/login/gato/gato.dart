import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/Controller/gato_Controller/gato_Controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Gato extends StatefulWidget {
  @override
  _GatoState createState() => _GatoState();
}

class _GatoState extends State<Gato> {
  GatoController _gatoController = Get.put(GatoController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: GradientColor.greenGradient
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap:() => _gatoController.moveBack(),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/Group 333.png',
                          height: 94,
                        ),
                        spaceHorizontal(10),
                        MyText(
                          text: "Cadastre\nseu Gato",
                          size: 28,
                          weight: FontWeight.bold,
                          color: KPrimaryColor,
                        ),
                      ],
                    ),
                    //Widgets
                    GetBuilder<GatoController>(
                      init: GatoController(),
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
                            width: Get.width*0.5,
                            child: MyButton(
                              onPressed: () => _gatoController.moveNext(),
                              color: KPrimaryColor,
                              text: "Proximo".toUpperCase(),
                              textSize: 14,
                              textColor: KParrotColor,
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
