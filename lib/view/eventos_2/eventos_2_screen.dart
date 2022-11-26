import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';

class Eventos2Screen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerGato2(),
      appBar: AppBarWidget(close: false),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/Mask Group 33.png",
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Pet South America",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: KSkyBlueColor,
                    fontSize: 24,
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: KRedColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "DATA",
                            style: TextStyle(
                              fontFamily: 'BalooChettan2-Regular',
                              color: KPrimaryColor.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "03/09",
                            style: TextStyle(
                              fontFamily: 'BalooChettan2-Regular',
                              color: KPrimaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "HORÁRIO",
                            style: TextStyle(
                              fontFamily: 'BalooChettan2-Regular',
                              color: KPrimaryColor.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "09:00",
                            style: TextStyle(
                              fontFamily: 'BalooChettan2-Regular',
                              color: KPrimaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "VALOR",
                            style: TextStyle(
                              fontFamily: 'BalooChettan2-Regular',
                              color: KPrimaryColor.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "R\$ 25,00",
                            style: TextStyle(
                              fontFamily: 'BalooChettan2-Regular',
                              color: KPrimaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  minLeadingWidth: 30,
                  leading: Container(
                    margin: EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.location_on,
                      color: KSkyBlueColor,
                      size: 30,
                    ),
                  ),
                  title: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "São Paulo Expo",
                      style: TextStyle(
                        color: KBlackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "1,5, Rod. dos Imigrantes - Vila Água Funda",
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
                style: GoogleFonts.openSans(
                  height: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {
                  eventos3BottomSheet();
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      height: 80,
                      width: 220,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: KSkyBlueColor, width: 2),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.zero,
                            height: Get.height,
                            decoration: BoxDecoration(
                              color: KSkyBlueColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/Group 221.png',
                              width: 50,
                              color: KPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerRight,
                              child: Text(
                                "SIM, NÓS VAMOS",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: KSkyBlueColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  eventos3BottomSheet() {
    return Get.bottomSheet(
      Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: Get.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: KSkyBlueColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(
                  'assets/icones.png',
                  height: 40,
                  color: KPrimaryColor,
                ),
              ),
              Text(
                "Gostaria de confirmar a sua presença nesse evento?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: KGreyColor,
                  fontSize: 26,
                  fontFamily: 'BalooChettan2-Regular',
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 200,
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0,
                  height: 52,
                  highlightElevation: 0,
                  color: KRedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "CONFIRMAR PRESENÇA",
                    style: TextStyle(color: KPrimaryColor, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
