import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/Controller/noticias_Controller/noticias_controller.dart';
import 'package:olapets/Controller/pet_News_Controller/pet_news_controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';
import 'noticias_1/noticias_1_screen.dart';

class PetNewsScreen extends StatefulWidget {
  @override
  _PetNewsScreenState createState() => _PetNewsScreenState();
}

class _PetNewsScreenState extends State<PetNewsScreen> {
  PetNewsController controller = Get.put(PetNewsController());
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerGato2(),
      extendBodyBehindAppBar: true,
      appBar: AppBarWidget2(_scaffoldKey),
      body: GetBuilder<NoticiasController>(
          init: NoticiasController(),
          builder: (controller) {
            return ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                Container(
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            bottom: 25,
                          ),
                          child: MyText(
                            text: 'Notícias',
                            color: KExtraLightColor,
                            size: 32,
                            weight: FontWeight.bold,
                            fontFamily: 'BalooChettan2-Regular',
                          ),
                        ),
                      ),
                      ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: controller.box.length,
                          itemBuilder: (context, index) {
                            NoticiasModel nm = controller.box[index];
                            return GestureDetector(
                              onTap: () {
                                Get.to(
                                  Noticias1Screen(
                                    noticiasModel: nm,
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        nm.image.toString(),
                                        height: 187,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    spaceVertical(10),
                                    ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      leading: Image.asset(
                                        "assets/Group 370.png",
                                        width: 24,
                                      ),
                                      title: Text(
                                        nm.title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      leading: Image.asset(
                                        "assets/Group 367.png",
                                        width: 24,
                                      ),
                                      title: Text(
                                        nm.subtitle,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(color: Colors.black),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      leading: Image.asset(
                                        "assets/Icon feather-instagram.png",
                                        width: 24,
                                      ),
                                      title: Text(
                                        nm.date,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(color: KSkyBlueColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
