import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/Controller/noticias_Controller/noticias_controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/Notifica%C3%A7%C3%B5es/notificacoes_screen.dart';
import 'package:olapets/view/ajuda/ajuda_screen.dart';
import 'package:olapets/view/configurascoes/configuracoes_screen.dart';
import 'package:olapets/view/login/login.dart';
import 'package:olapets/view/meus_pets/meus_pets_screen.dart';
import 'package:olapets/view/notificacoes_1/notificacoes_1_screen.dart';
import 'package:olapets/view/notificacoes_2/notificacoes_2_screen.dart';
import 'package:olapets/view/tutorial/tutorial.dart';
import 'package:olapets/view/tutorial/tutorial_5.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class DrawerGato2 extends StatefulWidget {
  @override
  _DrawerGato2State createState() => _DrawerGato2State();
}

class _DrawerGato2State extends State<DrawerGato2> {

  NoticiasController controller = Get.put(NoticiasController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Drawer(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Component 43 – 1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        padding: EdgeInsets.only(top: 20,right: 5),
                        child: Icon(
                          Icons.close,
                          color: KPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: KPrimaryColor,
                        child: Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/Captura de Tela 2018-12-17 às 17.17.35.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: -10,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: KPrimaryColor,
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/img_dicas_para_adestrar_um_golden_retriever_21349_600.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                spaceVertical(20),
                Center(
                  child: MyText(
                    text: 'Adriana Monteiro',
                    size: 31,
                    color: KPrimaryColor,
                  ),
                ),
                spaceVertical(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      text: 'Editar',
                      size: 16,
                      color: KPrimaryColor,
                    ),
                    spaceHorizontal(10),
                    Image.asset(
                      'assets/edit.png',
                      height: 10,
                    ),
                  ],
                ),
                spaceVertical(40),
                GestureDetector(
                  onTap: (){
                    Get.to(MeusPetsScreen());
                  },
                  child: DrawerTiles(
                    title: 'Meus Pets',
                    icon: 'assets/cat.png',
                  ),
                ),
                GestureDetector(
                  onTap: (){
                   Get.to(NotificacoesScreen());
                  },
                  child: DrawerTiles(
                    title: 'Notificações',
                    icon: 'assets/notification (1).png',
                    haveNofity: true,
                  ),
                ),
            GestureDetector(
              onTap: (){
               Get.to(Notificacoes1Screen());
              },
              child: DrawerTiles(
                  title: 'Meus Benefícios',
                  icon: 'assets/tickets.png',
                ),
            ),
            GestureDetector(
              onTap: (){
               Get.to(ConfiguracoesScreen());
              },
              child: DrawerTiles(
                  title: 'Configurações',
                  icon: 'assets/settings (1).png',
                ),
            ),
            GestureDetector(
              onTap: (){
               Get.to(AjudaScreen());
              },
              child: DrawerTiles(
                  title: 'Ajuda',
                  icon: 'assets/information.png',
                ),
            ),
            GestureDetector(
              onTap: (){
               Get.to(Notificacoes2Screen());
              },
              child: DrawerTiles(
                  title: 'Termos de uso',
                  icon: 'assets/file.png',
                ),
            ),
            GestureDetector(
              onTap: (){
               Get.to(Tutorial());
              },
              child: DrawerTiles(
                  title: 'Tutorial',
                  icon: 'assets/Icon feather-smartphone.png',
                ),
            ),
            GestureDetector(
              onTap: (){
               Get.to(Login());
              },
              child: DrawerTiles(
                  title: 'Sair',
                  icon: 'assets/Icon ionic-md-exit.png',
                ),
            ),
              ],
            ),
          ),
      ),
    );
  }
}

class DrawerTiles extends StatefulWidget {
  bool? haveNofity;
  var icon, title;

  DrawerTiles({
    this.icon,
    this.title,
    this.haveNofity = false,
  });

  @override
  _DrawerTilesState createState() => _DrawerTilesState();
}

class _DrawerTilesState extends State<DrawerTiles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '${widget.icon}',
              height: 29,
            ),
          ],
        ),
        title: MyText(
          text: '${widget.title}',
          size: 20,
          color: KPrimaryColor,
        ),
        trailing: widget.haveNofity == true
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: KRedColor,
                    ),
                    child: Center(
                      child: MyText(
                        size: 15,
                        color: KPrimaryColor,
                        text: "15",
                      ),
                    ),
                  ),
                ],
              )
            : SizedBox(),
      ),
    );
  }
}
