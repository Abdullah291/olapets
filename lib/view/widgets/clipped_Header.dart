import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';

import 'mySpacing.dart';
import 'myText.dart';

class ClippedHeader extends StatelessWidget {
  var img;
  double? imageHeight;
  bool? haveBackButton;
  bool? showText;

  ClippedHeader({
    this.img,
    this.haveBackButton = false,
    this.imageHeight,
    this.showText=true,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: GradientColor.redGradient,
        ),
        height: 320,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            haveBackButton == true
                ? GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
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
                  )
                : Container(
                    margin: EdgeInsets.only(top: 15),
                  ),
          showText!?  SizedBox(height: 30,):SizedBox(height: 50,),
            Image.asset(
              '$img',
              height: imageHeight,
            ),
           showText!? Text("Olá Pet Club",style: GoogleFonts.balooBhaijaan(fontWeight: FontWeight.w400,color: KPrimaryColor,fontSize: 42),):SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
