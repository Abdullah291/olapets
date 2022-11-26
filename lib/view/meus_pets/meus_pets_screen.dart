import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';
import 'package:olapets/view/widgets/myText.dart';

class MeusPetsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerGato2(),
      appBar: AppBarWidget2(_scaffoldKey),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 15,
                  bottom: 20,
                ),
                child: MyText(
                  text: 'Meus Pets',
                  color: KExtraLightColor,
                  size: 32,
                  weight: FontWeight.bold,
                  fontFamily: 'BalooChettan2-Regular',
                ),
              ),
            ),
            Wrap(
              children: [
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: circle100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Mask Group 5.png",
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Thor".toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: KGreyColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      height: 60,
                      width: 60,
                      decoration: circle100,
                      child: Image.asset(
                        "assets/+.png",
                        height: 50,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Adicionar".toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: KGreyColor,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
