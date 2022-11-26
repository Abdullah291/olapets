import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Gato_3 extends StatefulWidget {
  @override
  _Gato_3State createState() => _Gato_3State();
}

class _Gato_3State extends State<Gato_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KPrimaryColor,
        title: GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: KParrotColor,
                  size: 20,
                ),
                spaceHorizontal(10),
                MyText(
                  size: 14,
                  color: KParrotColor,
                  text: "Voltar",
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Component 45 – 1.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  CircleAvatar(
                    radius: 95,
                    backgroundColor: KPrimaryColor,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/img_dicas_para_adestrar_um_golden_retriever_21349_600.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: -10,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: KRedColor,
                      child: Image.asset(
                        'assets/cam_Icon.png',
                        height: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: MyText(
                color: KPrimaryColor,
                text: "Thor Monteiro",
                size: 40,
                fontFamily: 'BalooChettan2-Regular',
                weight: FontWeight.bold,
              ),
            ),
            Center(
              child: MyText(
                color: KPrimaryColor,
                text: "Golden Retriever | 2 anos",
                size: 13,
              ),
            ),
            spaceVertical(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: MyText(
                      text: 'Espécie',
                      size: 17,
                      color: KPrimaryColor,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
                spaceHorizontal(20),
                Expanded(
                  child: MyText(
                    text: 'Cachorro',
                    size: 17,
                    color: KPrimaryColor,
                  ),
                ),
              ],
            ),
            spaceVertical(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: MyText(
                      text: 'Sexo',
                      size: 17,
                      color: KPrimaryColor,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
                spaceHorizontal(20),
                Expanded(
                  child: MyText(
                    text: 'Macho',
                    size: 17,
                    color: KPrimaryColor,
                  ),
                ),
              ],
            ),
            spaceVertical(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: MyText(
                      text: 'Raça',
                      size: 17,
                      color: KPrimaryColor,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
                spaceHorizontal(20),
                Expanded(
                  child: MyText(
                    text: 'Golden Retriever',
                    size: 17,
                    color: KPrimaryColor,
                  ),
                ),
              ],
            ),
            spaceVertical(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: MyText(
                      text: 'Nascimento',
                      size: 17,
                      color: KPrimaryColor,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
                spaceHorizontal(20),
                Expanded(
                  child: MyText(
                    text: '12/12/2015',
                    size: 17,
                    color: KPrimaryColor,
                  ),
                ),
              ],
            ),
            spaceVertical(30),
            Center(
              child: Container(
                width: Get.width * 0.3,
                child: MyButton(
                  onPressed: () {},
                  text: 'EDITAR',
                  color: KBlackColor.withOpacity(0.1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
