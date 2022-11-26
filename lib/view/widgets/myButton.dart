import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';

import 'myText.dart';

class MyButton extends StatefulWidget {
  var text, color, deco, align,textColor;
  double? textSize;
  VoidCallback? onPressed;

  MyButton({
    this.text,
    this.textColor = KPrimaryColor,
    this.color,
    this.deco = TextDecoration.none,
    this.align,
    this.textSize,
    this.onPressed,
  });

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      color: widget.color,
      elevation: 0,
      highlightElevation: 0,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "${widget.text}".toUpperCase(),
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w400,
          fontSize: widget.textSize,
          color: widget.textColor,
          decoration: widget.deco,
        ),
        textAlign: widget.align,
      ),
    );
  }
}

//Button2

class MyButton2 extends StatefulWidget {
  var text, color, deco, align,textColor;
  double? textSize;
  VoidCallback? onPressed;

  MyButton2({
    this.text,
    this.textColor = KPrimaryColor,
    this.color,
    this.deco = TextDecoration.none,
    this.align,
    this.textSize,
    this.onPressed,
  });

  @override
  _MyButton2State createState() => _MyButton2State();
}

class _MyButton2State extends State<MyButton2> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      color: widget.color,
      elevation: 0,
      highlightElevation: 0,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 3),
        child: Text(
          "${widget.text}".toUpperCase(),
          style: TextStyle(
            fontFamily: "Gibson-Regular",
            fontWeight: FontWeight.w400,
            fontSize: widget.textSize,
            color: widget.textColor,
            decoration: widget.deco,
          ),
          textAlign: widget.align,
        ),
      ),
    );
  }
}



class BorderButton extends StatefulWidget {
  var text, textColor,icon,borderColor;
  double? textSize, height;
  VoidCallback? onPressed;
  bool? haveIcon;

  BorderButton({
    this.text,
    this.textColor = KBlackColor,
    this.textSize,
    this.height,
    this.onPressed,
    this.haveIcon = false,
    this.icon,
    this.borderColor = KRedColor,
  });

  @override
  _BorderButtonState createState() => _BorderButtonState();
}

class _BorderButtonState extends State<BorderButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: widget.borderColor,
          width: 2,
        ),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          primary: KPrimaryColor,
        ),
        onPressed: widget.onPressed,
        child: widget.haveIcon == true
            ? Image.asset(
                '${widget.icon}',
                height: 30,
              )
            : MyText(
                text: "${widget.text}".toUpperCase(),
                color: widget.textColor,
                size: widget.textSize,
              ),
      ),
    );
  }
}
