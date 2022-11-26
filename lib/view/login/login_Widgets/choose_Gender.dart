import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class ChoseGender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
             "Sexo",
            style: TextStyle(
            fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'BalooChettan2-Regular',
            color: KPrimaryColor,
          ),),
          spaceVertical(30),
          Row(
            children: [
              Gender(
                genderIcon: 'assets/Group 379.png',
                title: 'Fêmea',
              ),
              spaceHorizontal(20),
              Gender(
                genderIcon: 'assets/male.png',
                title: 'Macho',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Gender extends StatefulWidget {
  var genderIcon, title;

  Gender({
    this.genderIcon,
    this.title,
  });

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  var bordeColor = KPrimaryColor.withOpacity(0.5), imageColor, bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (bordeColor == KPrimaryColor.withOpacity(0.5)) {
                bordeColor = KPrimaryColor;
                bgColor = KPrimaryColor;
                imageColor = KRedColor;
              } else {
                bordeColor = KPrimaryColor.withOpacity(0.5);
                bgColor = null;
                imageColor = null;
              }
            });
          },
          child: Container(
            height: 78,
            width: 78,
            decoration: BoxDecoration(
              color: bgColor,
              border: Border.all(
                color: bordeColor,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image.asset(
                '${widget.genderIcon}',
                height: 46,
                color: imageColor,
              ),
            ),
          ),
        ),
        spaceVertical(15),
        Text('${widget.title}',
          style: GoogleFonts.openSans(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: bordeColor,
        ),),
      ],
    );
  }
}

