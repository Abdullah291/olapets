import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Cachorro_1 extends StatefulWidget {
  @override
  _Cachorro_1State createState() => _Cachorro_1State();
}

class _Cachorro_1State extends State<Cachorro_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(gradient: GradientColor.redGradient2),
        child: ListView(
          children: [
            spaceVertical(40),
            Container(
              height: 170,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    right: 0,
                    top: -16,
                    child: Container(
                      height: 81,
                      padding: EdgeInsets.only(left: 15),
                      width: Get.width * 0.65,
                      decoration: BoxDecoration(
                        color: KBlackColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Cadastre',
                            size: 24,
                            weight: FontWeight.bold,
                            color: KPrimaryColor,
                            fontFamily: 'BalooChettan2-Regular',
                          ),
                          MyText(
                            size: 18,
                            weight: FontWeight.bold,
                            color: KPrimaryColor,
                            text: 'seu cachorro',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Mask Group 2.png',
                          height: 128,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 130,
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        color: KBlackColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/cam_Icon.png',
                          height: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            spaceVertical(60),
            MyTextField(
              hintText: "Nome",
            ),
            spaceVertical(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: 'Sexo',
                  size: 16,
                  color: KPrimaryColor,
                ),
                Row(
                  children: [
                    Gender(
                      genderIcon: 'assets/Group 379.png',
                      title: 'Fêmea',
                    ),
                    spaceHorizontal(20),
                    Gender(
                      genderIcon: 'assets/male.png',
                      title: 'Macho',
                    ),
                  ],
                ),
              ],
            ),
            spaceVertical(50),
            MyTextField(
              hintText: "Nascimento",
            ),
            spaceVertical(20),
            MyTextField(
              hintText: "Raça",
            ),
            spaceVertical(30),
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
                      text: 'Cadastrar',
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
      ),
    );
  }
}

class Gender extends StatefulWidget {
  var genderIcon, title;

  Gender({
    this.genderIcon,
    this.title,
  });

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  var bordeColor = KPrimaryColor.withOpacity(0.5), imageColor, bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (bordeColor == KPrimaryColor.withOpacity(0.5)) {
                bordeColor = KPrimaryColor;
                bgColor = KPrimaryColor;
                imageColor = KRedColor;
              } else {
                bordeColor = KPrimaryColor.withOpacity(0.5);
                bgColor = null;
                imageColor = null;
              }
            });
          },
          child: Container(
            height: 78,
            width: 78,
            decoration: BoxDecoration(
              color: bgColor,
              border: Border.all(
                color: bordeColor,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image.asset(
                '${widget.genderIcon}',
                height: 46,
                color: imageColor,
              ),
            ),
          ),
        ),
        spaceVertical(15),
        MyText(
          text: '${widget.title}',
          size: 12,
          color: KPrimaryColor,
        ),
      ],
    );
  }
}
