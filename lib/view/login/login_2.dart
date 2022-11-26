import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/login/login_7.dart';
import 'package:olapets/view/widgets/clipped_Header.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Login_2 extends StatefulWidget {
  @override
  _Login_2State createState() => _Login_2State();
}

class _Login_2State extends State<Login_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: ClippedHeader(
              haveBackButton: true,
              img: 'assets/Group 237.png',
              imageHeight: Get.height * 0.16,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    spaceVertical(30),
                    MyText(
                      text:
                          "Insira o seu email, em instantes você receberá um email com seu código de acesso ",
                      size: 18,
                      color: KRedColor,
                    ),
                    spaceVertical(30),
                    //Email
                    TextFormField(
                      cursorColor: KRedColor,
                      style: TextStyle(
                        fontSize: 17,
                        color: KRedColor,
                      ),
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 17,
                          color: KRedColor,
                        ),
                        hintText: "E-mail",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: KRedColor,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: KRedColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                spaceVertical(40),
                Column(
                  children: [
                    Container(
                      width: Get.width * 0.6,
                      child: MyButton(
                        onPressed: () => login5BottomSheet(),
                        text: 'SOLICITAR NOVA SENHA',
                        color: KRedColor,
                      ),
                    ),
                    spaceVertical(20),
                    GestureDetector(
                      onTap: () => Get.off(() => Login_7()),
                      child: MyText(
                        text: "Fazer Login",
                        size: 14,
                        color: KRedColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  login5BottomSheet() {
    return Get.bottomSheet(
      Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: Get.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: KSkyBlueColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.check,
                  size: 60,
                  color: KPrimaryColor,
                ),
              ),
              Text(
                "Nova senha enviada com sucesso!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: KGreyColor,
                  fontSize: 26,
                  fontFamily: 'BalooChettan2-Regular',
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 200,
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0,
                  height: 52,
                  highlightElevation: 0,
                  color: KRedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "flechar".toUpperCase(),
                    style: TextStyle(color: KPrimaryColor, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
