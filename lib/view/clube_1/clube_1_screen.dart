import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/appBar_widget.dart';

class Clube1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarWidget(title: "", close: false),
      body: ListView(
        padding: EdgeInsets.only(
          top: 200,
          left: 15,
          right: 15,
          bottom: 20,
        ),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 250,
              width: Get.width,
              child: Image.asset(
                "assets/Mask Group 33.png".toString(),
                height: Get.height,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              "PET WAVE",
              style: Theme.of(context).textTheme.headline2!,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: KSkyBlueColor,
                size: 22,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  "R. Dr. Roberto Barrozo, 990 - Lj 03 - 80810 - 090, Bom Retiro - Curitiba",
                  style: Theme.of(context).textTheme.subtitle1!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
            style: GoogleFonts.openSans(
              fontSize: 13,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Container(
                height: 90,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: KRedColor,
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      color: KRedColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/sett.png',
                        height: Get.height,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          "GERAR\nCUPOM",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: KRedColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
