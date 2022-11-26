import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/tutorial/tutorial.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () => Get.off(() => Tutorial(),transition: Transition.leftToRight));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: KRedColor,
            image: DecorationImage(
              image: AssetImage('assets/bg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Splash_logo.png',
                height: 180,
              ),
              Text("Olá Pet Club",
              style: GoogleFonts.balooBhaijaan(fontWeight: FontWeight.w400,fontSize: 45,color: KPrimaryColor),
              ),
              spaceVertical(30),
              Text(
                'Seja bem vindo à\nmaior plataforma\nPet Friendly',
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Gibson-Regular',
                  color: KPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              )

            ],
          ),
        ),
      ),
    );
  }
}
