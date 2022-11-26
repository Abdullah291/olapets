import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/login/login_2.dart';
import 'package:olapets/view/widgets/clipped_Header.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Login_42 extends StatefulWidget {
  @override
  _Login_42State createState() => _Login_42State();
}

class _Login_42State extends State<Login_42> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: ClippedHeader(
              haveBackButton: true,
              img: 'assets/logo with title.png',
              imageHeight: Get.height * 0.21,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    // Email
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
                    spaceVertical(20),
                    //Password
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
                        hintText: "Senha",
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
                    spaceVertical(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => Get.to(() => Login_2()),
                          child: MyText(
                            text: "Esqueci a senha",
                            color: KRedColor,
                            size: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
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
                        text: 'Entrar'.toUpperCase(),
                        color: KRedColor,
                      ),
                    ),
                    spaceVertical(15),
                    Container(
                      width: Get.width * 0.6,
                      height: 52,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: KRedColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Entrar com Facebook',
                            size: 14,
                            color: KRedColor,
                          ),
                          Row(
                            children: [
                              VerticalDivider(
                                color: KRedColor,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1.5,
                              ),
                              spaceHorizontal(10),
                              Image.asset(
                                'assets/fb-red.png',
                                height: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    spaceVertical(15),
                    Container(
                      width: Get.width * 0.6,
                      height: 52,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: KRedColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Entrar com Google',
                            size: 14,
                            color: KRedColor,
                          ),
                          Row(
                            children: [
                              VerticalDivider(
                                color: KRedColor,
                                indent: 10,
                                endIndent: 10,
                                thickness: 1.5,
                              ),
                              spaceHorizontal(10),
                              Image.asset(
                                'assets/google-red.png',
                                height: 28,
                              ),
                            ],
                          ),
                        ],
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
