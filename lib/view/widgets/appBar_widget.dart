import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

AppBar AppBarWidget({
  String? title = "",
  bool? close = false,
}) {
  return AppBar(
    leadingWidth: 110,
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    leading: Container(
      padding: EdgeInsets.only(left: 15),
      child: GestureDetector(
        onTap: () => Get.back(),
        child: Container(
          margin: EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: KPrimaryColor,
                size: 18,
              ),
              spaceHorizontal(5),
              MyText(
                size: 14,
                color: KPrimaryColor,
                text: "Voltar".toUpperCase(),
              ),
            ],
          ),
        ),
      ),
    ),
    title: Container(
      child: Text(
        title!,
        style: TextStyle(fontSize: 25, color: KPrimaryColor),
      ),
    ),
    flexibleSpace: Image.asset(
      "assets/Mask Group 30.png",
      height: Get.height,
      fit: BoxFit.cover,
      color: KExtraLightColor,
    ),
    toolbarHeight: 140,
    actions: [
      close == true
          ? Container(
              margin: EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.close,
                  color: KPrimaryColor,
                ),
              ),
            )
          : Container(),
    ],
  );
}
