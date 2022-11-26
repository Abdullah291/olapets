import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/clube/clube_controller.dart';
import 'package:olapets/view/clube_1/clube_1_screen.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class ClubeScreen extends StatefulWidget {
  @override
  _ClubeScreenState createState() => _ClubeScreenState();
}

class _ClubeScreenState extends State<ClubeScreen> {
  final CarouselController _controller = CarouselController();

  List<Widget>? item = [
    Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/dog_icecream.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Na compra de um Gelato G, ganhe um picolé Pet",
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Válido em Crema Gelato Italiano - Itaim Bibi",
                  style: GoogleFonts.openSans(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/dog_icecream.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Na compra de um Gelato G, ganhe um picolé Pet",
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Válido em Crema Gelato Italiano - Itaim Bibi",
                  style: GoogleFonts.openSans(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/dog_icecream.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Na compra de um Gelato G, ganhe um picolé Pet",
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Válido em Crema Gelato Italiano - Itaim Bibi",
                  style: GoogleFonts.openSans(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/dog_icecream.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Na compra de um Gelato G, ganhe um picolé Pet",
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Válido em Crema Gelato Italiano - Itaim Bibi",
                  style: GoogleFonts.openSans(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ];

  List images = [
    "assets/adagio.png",
    "assets/animalie.png",
    "assets/ani.png",
    "assets/active dog.png",
    "assets/seletiva.png",
    "assets/aulife.png",
    "assets/kang.png",
    "assets/bcollie.png",
    "assets/b.png",
    "assets/bakeria.png",
    "assets/beautycao.png",
    "assets/beddog.png",
  ];

  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerGato2(),
      extendBodyBehindAppBar: true,
      appBar: AppBarWidget2(_scaffoldKey),
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 15,
                  ),
                  child: MyText(
                    text: 'Benefícios',
                    color: KExtraLightColor,
                    size: 32,
                    weight: FontWeight.bold,
                    fontFamily: 'BalooChettan2-Regular',
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
                GetBuilder<ClubeController>(
                  init: ClubeController(),
                  builder: (controller) {
                    return Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 80,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: controller.list.length,
                        itemBuilder: (context, index) {
                          ClubeModel cm = controller.list[index];
                          return Container(
                            child: GestureDetector(
                              onTap: () {
                                controller.selectedNews(cm.id);
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 54,
                                    width: 54,
                                    decoration: BoxDecoration(
                                      color: cm.isSelected!
                                          ? KRedColor
                                          : KPrimaryColor,
                                      border: Border.all(
                                        color: cm.isSelected!
                                            ? KRedColor
                                            : KGreyColor,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          cm.image.toString(),
                                          height: 24,
                                          color: cm.isSelected!
                                              ? KPrimaryColor
                                              : KGreyColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    cm.title.toString(),
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: cm.isSelected!
                                          ? KRedColor
                                          : KGreyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                spaceVertical(30),
                Container(
                  height: 300,
                  child: CarouselSlider(
                    items: item!,
                    carouselController: _controller,
                    options: CarouselOptions(
                      initialPage: 0,
                      aspectRatio: 1.1,
                      viewportFraction: 1.03,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(
                        milliseconds: 800,
                      ),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, re) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(
                    item as List,
                    (index, url) {
                      return Container(
                        width: 7.0,
                        height: 7.0,
                        margin: EdgeInsets.only(
                            top: 20, bottom: 30, left: 4, right: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? KRedColor
                              : KGreyColor.withOpacity(0.6),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.only(left: 14, right: 14, bottom: 20),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Get.to(
                  Clube1Screen(),
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 9,
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: Get.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                images[index],
                                height: Get.height,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            "ANIMARTS",
                            style: GoogleFonts.openSans(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
