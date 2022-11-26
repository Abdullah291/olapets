import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olapets/Controller/cachorro_13_Controller/cachorro_13_Controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';

class Cachorro_13 extends StatefulWidget {
  @override
  _Cachorro_13State createState() => _Cachorro_13State();
}

class _Cachorro_13State extends State<Cachorro_13> {
  Cachorro13Controller _cachorroController = Get.put(Cachorro13Controller());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _cachorroController.pageController,
            onPageChanged: _cachorroController.selectedPageIndex,
            itemCount: _cachorroController.getData.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                gradient:
                    _cachorroController.getData[index].bgColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: KPrimaryColor,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            _cachorroController
                                .getData[index].heading,
                            style: GoogleFonts.balooBhaijaan(
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                              color: KPrimaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        spaceVertical(30),
                        Image.asset(
                          _cachorroController.getData[index].img,
                          height: Get.height * 0.32,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _cachorroController
                            .getData[index].title,
                        style: TextStyle(
                          fontFamily: "BalooChettan2-Regular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: KPrimaryColor,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      spaceVertical(15),
                      Center(
                        child: Container(
                          height: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: KPrimaryColor,
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              primary: KPrimaryColor,
                            ),
                            onPressed: _cachorroController
                                .getData[index].onTap,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                  _cachorroController
                                      .getData[index].buttonText.toString()
                                      .toUpperCase(),
                                style: GoogleFonts.balooBhaijaan(
                                  color: KPrimaryColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _cachorroController.getData.length,
                  (index) => Obx(() {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: _cachorroController.selectedPageIndex.value == index
                            ? KPrimaryColor
                            : KBlackColor.withOpacity(0.3),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
