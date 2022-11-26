import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/eventos_2/eventos_2_screen.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';
import 'package:olapets/view/widgets/myText.dart';

class EventosScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBody: true,
      extendBodyBehindAppBar: true,
      drawer: DrawerGato2(),
      appBar: AppBarWidget2(_scaffoldKey),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                  ),
                  child: MyText(
                    text: 'Evantos',
                    color: KExtraLightColor,
                    size: 32,
                    weight: FontWeight.bold,
                    fontFamily: 'BalooChettan2-Regular',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0,
                  color: KRedColor,
                  height: 52,
                  highlightElevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 24,
                        color: KPrimaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      MyText(
                        text: 'São Paulo, SP, Brasil'.toUpperCase(),
                        color: KPrimaryColor,
                        size: 14,
                        weight: FontWeight.bold,
                        fontFamily: 'BalooChettan2-Regular',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(Eventos2Screen());
                      },
                      child: Card(
                        margin: EdgeInsets.only(bottom: 20),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/p4.png",
                                      width: 20,
                                      color: KSkyBlueColor,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Pet South America",
                                      style:
                                         GoogleFonts.balooChettan(fontWeight: FontWeight.w400,fontSize: 18,color: KSkyBlueColor)
                                    ),
                                  ],
                                ),
                              ),
                              Text("São Paulo Expo - São Paulo, SP",
                                  style:
                                      Theme.of(context).textTheme.subtitle1!),
                              Container(
                                margin: EdgeInsets.only(bottom: 20, top: 10),
                                child: Text(
                                  "03/09/2021 - Início: 15h",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: KSkyBlueColor),
                                ),
                              ),
                              Container(
                                width: Get.width,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
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
                                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et",
                                 style: GoogleFonts.roboto(fontSize: 16,color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
