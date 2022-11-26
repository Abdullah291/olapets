import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/alter_Dialouges/buscar%20_Cdade%20_1.dart';
import 'package:olapets/view/alter_Dialouges/home_2.dart';
import 'package:olapets/view/clube_1/clube_1_screen.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';
import 'package:olapets/view/widgets/myText.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();

  List<Widget>? item = [
    Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/Mask Group 31.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 1,
            child: Text(
              "15% de desconto",
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
            flex: 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/Mask Group 31.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 1,
            child: Text(
              "15% de desconto",
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
            flex: 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/Mask Group 31.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 1,
            child: Text(
              "15% de desconto",
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
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
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      return showPopUp();
    });
  }

  showPopUp() {
    Get.dialog(BuscarCidade_1());
  }

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
                SizedBox(
                  height: 15,
                ),
                MyText(
                  text: 'Início',
                  color: KExtraLightColor,
                  size: 32,
                  weight: FontWeight.bold,
                  fontFamily: 'BalooChettan2-Regular',
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20,top: 5),
                  child: MyText(
                    text: 'Pet Club',
                    color: KSkyBlueColor,
                    size: 30,
                    weight: FontWeight.bold,
                    fontFamily: 'BalooChettan2-Regular',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Clube1Screen());
                  },
                  child: Container(
                    height: 229,
                    child: CarouselSlider(
                      items: item!,
                      carouselController: _controller,
                      options: CarouselOptions(
                        initialPage: 0,
                        aspectRatio: 1.47,
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
                            top: 5, bottom: 20, left: 3, right: 3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? KSkyBlueColor
                              : KLightGreyColor,
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: 143,
                  child: MaterialButton(
                    onPressed: () {},
                    height: 47,
                    color: KExtraLightColor,
                    elevation: 0,
                    highlightElevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "PET MAIS ",
                          style: GoogleFonts.openSans(color: KPrimaryColor),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: KPrimaryColor,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 15),
                  child: MyText(
                    text: 'Pet News',
                    color: KSkyBlueColor,
                    size: 30,
                    weight: FontWeight.bold,
                    fontFamily: 'BalooChettan2-Regular',
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 581,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/path_bg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/Mask Group 31.png",
                        fit: BoxFit.cover,
                        height: 205,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      child: Text(
                        "Estudo revela que mulheres que dormem com cães têm melhor qualidade de sono",
                        style: Theme.of(context).textTheme.headline2!,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "14/10/2018",
                        style: Theme.of(context).textTheme.subtitle2!,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: 2,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/Mask Group 33.png",
                              fit: BoxFit.cover,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                "Cães e gatos podem tirar fotos com Papai Noel em Shopping",
                                style: Theme.of(context).textTheme.headline2!,
                              ),
                            ),
                            Text(
                              "14/10/2018",
                              style: Theme.of(context).textTheme.subtitle2!,
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                Positioned(
                  bottom: -18,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: 143,
                      child: MaterialButton(
                        onPressed: () {},
                        height: 47,
                        color: KSkyBlueColor,
                        elevation: 0,
                        highlightElevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "PET MAIS ",
                              style: GoogleFonts.openSans(color: KPrimaryColor),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: KPrimaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 50, bottom: 10),
              child: MyText(
                text: 'Pet Eventos',
                color: KSkyBlueColor,
                size: 30,
                weight: FontWeight.bold,
                fontFamily: 'BalooChettan2-Regular',
              ),
            ),
          ),
          Text(
            "Nossos eventos mais próximos",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: KLightGreyColor3),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(bottom: 20),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ],
                          ),
                        ),
                        Text("São Paulo Expo - São Paulo, SP",
                            style: Theme.of(context).textTheme.subtitle1!),
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
                          child: MyText(
                            size: 16,
                            text:
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et",
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
