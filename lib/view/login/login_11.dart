import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/login/login_7.dart';
import 'package:olapets/view/widgets/clipped_Header.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Login_11 extends StatefulWidget {
  @override
  _Login_11State createState() => _Login_11State();
}

class _Login_11State extends State<Login_11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: ClippedHeader(
              haveBackButton: true,
              img: 'assets/Cadastre-se no olá pet.png',
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
                        onPressed: () {},
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
}
