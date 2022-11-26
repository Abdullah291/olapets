import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/bottomNavBar/bottomNavBar_screen.dart';
import 'package:olapets/view/login/login_2.dart';
import 'package:olapets/view/widgets/clipped_Header.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class Login_7 extends StatefulWidget {
  @override
  _Login_7State createState() => _Login_7State();
}

class _Login_7State extends State<Login_7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: ClippedHeader(
              haveBackButton: true,
              img: 'assets/Splash_logo.png',
              imageHeight:130,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("Login",style: Theme.of(context).textTheme.headline1!.copyWith(color: KRedColor),),
                    // Email
                    SizedBox(height: 20,),
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
                        onPressed: () => Get.to(()=> BottomNavigationBarScreen()),
                        text: 'Entrar',
                        color: KRedColor,
                      ),
                    ),
                    spaceVertical(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container( width: Get.width * 0.28,
                          child: BorderButton(
                            onPressed: () {},
                            icon: 'assets/fb-red.png',
                            haveIcon: true,
                            height: 48,
                          ),
                        ),
                        spaceHorizontal(10),
                        Container(
                          width: Get.width * 0.28,
                          child: BorderButton(
                            onPressed: () {},
                            icon: 'assets/google-red.png',
                            haveIcon: true,
                            height: 48,
                          ),
                        ),
                      ],
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
