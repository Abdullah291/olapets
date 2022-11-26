import 'package:flutter/material.dart';
import 'package:olapets/constant/constant.dart';

class MyTextField extends StatefulWidget {
  TextEditingController? controller = TextEditingController();
  var hintText;
  int maxLines;
  bool obSecure = false;
  VoidCallback? onTap;

  MyTextField({
    this.hintText,
    this.maxLines = 1,
    this.controller,
    this.onTap,
  });

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      controller: widget.controller,
      cursorColor: KPrimaryColor,
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'Gibson-Regular',
        color: KPrimaryColor,
      ),
      textCapitalization: TextCapitalization.sentences,
      maxLines: widget.maxLines,
      obscureText: widget.obSecure,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontSize: 16,
          fontFamily: 'Gibson-Regular',
          color: KPrimaryColor,
        ),
        hintText: "${widget.hintText}",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: KPrimaryColor.withOpacity(0.5),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: KPrimaryColor,
          ),
        ),
      ),
    );
  }
}
