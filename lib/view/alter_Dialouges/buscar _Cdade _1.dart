import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/myText.dart';

class BuscarCidade_1 extends StatefulWidget {
  @override
  _BuscarCidade_1State createState() => _BuscarCidade_1State();
}

class _BuscarCidade_1State extends State<BuscarCidade_1> {
  TextEditingController _searchCon = TextEditingController();
  bool? showButton = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 20),
          height: Get.height * 0.4,
          decoration: BoxDecoration(
            color: KPrimaryColor,
            borderRadius: BorderRadius.circular(19),
          ),
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    height: 55,
                    decoration: BoxDecoration(
                      color: KRedColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(19),
                        topRight: Radius.circular(19),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Buscar',
                          size: 21,
                          fontFamily: 'BalooChettan2-Regular',
                          weight: FontWeight.w300,
                          color: KPrimaryColor,
                        ),
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.close,
                            color: KPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          margin: EdgeInsets.zero,
                          child: TextField(
                            cursorColor: KGreyColor,
                            onChanged: (value) {
                              setState(() {
                                value.length > 0
                                    ? showButton = true
                                    : showButton = false;
                              });
                            },
                            style: TextStyle(
                              color: KGreyColor,
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 15, top: 15),
                              hintStyle: TextStyle(
                                color: KGreyColor,
                                fontSize: 14,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: KGreyColor,
                              ),
                              hintText: 'Search',
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              showButton == true
                  ? Center(
                      child: MyButton(
                        textSize: 14,
                        onPressed: () {},
                        textColor: KPrimaryColor,
                        color: KLightRedColor,
                        text: 'confirmar'.toUpperCase(),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
