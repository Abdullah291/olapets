import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/Controller/noticias_Controller/noticias_controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/appBar_widget.dart';
import 'package:olapets/view/widgets/mySpacing.dart';

class Noticias1Screen extends StatelessWidget {
  NoticiasModel? noticiasModel;

  Noticias1Screen({this.noticiasModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarWidget(close: false),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            spaceVertical(15),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                noticiasModel!.image.toString(),
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            spaceVertical(20),
            Wrap(
              spacing: 20,
              children: [
                Image.asset(
                  "assets/Group 370.png",
                  width: 24,
                ),
                Image.asset(
                  "assets/Group 367.png",
                  width: 24,
                ),
                Image.asset(
                  "assets/Icon feather-instagram.png",
                  width: 24,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              noticiasModel!.title.toString(),
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              noticiasModel!.date.toString(),
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: KSkyBlueColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              noticiasModel!.subtitle.toString(),
              style: GoogleFonts.openSans(
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
