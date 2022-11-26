import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:olapets/Controller/noticias_Controller/noticias_controller.dart';
import 'package:olapets/constant/constant.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  NoticiasController controller = Get.put(NoticiasController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: GetBuilder<NoticiasController>(
        init: NoticiasController(),
        builder: (controller) {
          return controller.li[controller.selectedIndex];
        },
      ),
      bottomNavigationBar: GetBuilder<NoticiasController>(
        init: NoticiasController(),
        builder: (controller) {
          return Container(
            decoration: BoxDecoration(
              color: KExtraLightColor,
              borderRadius: BorderRadius.circular(100),
            ),
            margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
            padding: EdgeInsets.only(right: 5, left: 5),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              showSelectedLabels: false,
              unselectedItemColor: Colors.black,
              currentIndex: controller.selectedIndex,
              backgroundColor: Colors.transparent,
              fixedColor: Colors.transparent,
              onTap: (index) {
                controller.onItemSelection(index);
              },
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/Icon material-home.png',
                        height: 22,
                        color: controller.selectedIndex == 0
                            ? KPrimaryColor
                            : KPrimaryColor.withOpacity(0.4),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 10,
                          color: controller.selectedIndex == 0
                              ? KPrimaryColor
                              : KPrimaryColor.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                  title: SizedBox.shrink(),
                ),
                BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/Group 114.png',
                          height: 22,
                          color: controller.selectedIndex == 1
                              ? KPrimaryColor
                              : KPrimaryColor.withOpacity(0.4),
                        ),
                        Text(
                          "Pet Club",
                          style: TextStyle(
                            fontSize: 10,
                            color: controller.selectedIndex == 1
                                ? KPrimaryColor
                                : KPrimaryColor.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    title: SizedBox.shrink()),
                BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/fhfhf.png',
                            height: 22,
                            color: controller.selectedIndex == 2
                                ? KPrimaryColor
                                : KPrimaryColor.withOpacity(0.4),
                          ),
                          Text(
                            "Pet News",
                            style: TextStyle(
                              fontSize: 10,
                              color: controller.selectedIndex == 2
                                  ? KPrimaryColor
                                  : KPrimaryColor.withOpacity(0.4),
                            ),
                          )
                        ]),
                    title: SizedBox.shrink()),
                BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/aasdsa.png',
                          height: 22,
                          color: controller.selectedIndex == 3
                              ? KPrimaryColor
                              : KPrimaryColor.withOpacity(0.4),
                        ),
                        Text(
                          "Pet Event",
                          style: TextStyle(
                            fontSize: 10,
                            color: controller.selectedIndex == 3
                                ? KPrimaryColor
                                : KPrimaryColor.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    title: SizedBox.shrink()),
              ],
            ),
          );
        },
      ),
    );
  }
}
