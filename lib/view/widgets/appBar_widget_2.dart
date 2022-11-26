import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/Notifica%C3%A7%C3%B5es/notificacoes_screen.dart';
import 'package:olapets/view/alter_Dialouges/buscar%20_Cdade%20_1.dart';
import 'package:olapets/view/alter_Dialouges/popup.dart';

AppBar AppBarWidget2([GlobalKey<ScaffoldState>? scaffoldKey]) {
  return AppBar(
    leadingWidth: 90,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
      onTap: () {
        scaffoldKey!.currentState!.openDrawer();
      },
      child: Container(
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: KPrimaryColor,
              radius: 32,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/Captura de Tela 2018-12-17 às 17.17.35.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 70,
              right: -3,
              child: CircleAvatar(
                backgroundColor: KPrimaryColor,
                radius: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Image.asset(
                      "assets/img_dicas_para_adestrar_um_golden_retriever_21349_600.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    title: Container(
      child: Text(
        "Adriana Monteiro",
        style: TextStyle(
          fontSize: 16,
          color: KPrimaryColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'BalooChettan2-Regular',
        ),
      ),
    ),
    flexibleSpace: Image.asset(
      "assets/Mask Group 30.png",
      fit: BoxFit.cover,
      height: Get.height,
    ),
    toolbarHeight: 140,
    actions: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.dialog(
                      BuscarCidade_1(),
                    );
                  },
                  child: Image.asset(
                    "assets/Group 339.png",
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(NotificacoesScreen());
                  },
                  child: Image.asset(
                    "assets/Icon material-notifications.png",
                    height: 25,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
