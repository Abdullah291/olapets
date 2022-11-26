import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/Notifica%C3%A7%C3%B5es/notificacoes_screen.dart';
import 'package:olapets/view/ajuda/ajuda_screen.dart';
import 'package:olapets/view/bottomNavBar/bottomNavBar_screen.dart';
import 'package:olapets/view/cachorro/cachorro%20_4.dart';
import 'package:olapets/view/cachorro/cachorro_1.dart';
import 'package:olapets/view/cachorro/cachorro_2.dart';
import 'package:olapets/view/cachorro/cachorro_5.dart';
import 'package:olapets/view/cachorro_13/cachorro_13.dart';
import 'package:olapets/view/clube/clube_screen.dart';
import 'package:olapets/view/clube_1/clube_1_screen.dart';
import 'package:olapets/view/configurascoes/configuracoes_screen.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/eventos/eventos_screen.dart';
import 'package:olapets/view/eventos_2/eventos_2_screen.dart';
import 'package:olapets/view/gato/gato_3.dart';
import 'package:olapets/view/home/home_screen.dart';
import 'package:olapets/view/login/cachorro/cachorro%20_3.dart';
import 'package:olapets/view/login/cachorro/cachorro.dart';
import 'package:olapets/view/login/gato/gato.dart';
import 'package:olapets/view/login/login.dart';
import 'package:olapets/view/login/login_1.dart';
import 'package:olapets/view/login/login_11.dart';
import 'package:olapets/view/login/login_12.dart';
import 'package:olapets/view/login/login_2.dart';
import 'package:olapets/view/login/login_42.dart';
import 'package:olapets/view/login/login_7.dart';
import 'package:olapets/view/login/login_9.dart';
import 'package:olapets/view/login/login_Steps.dart';
import 'package:olapets/view/login/pet_Exotico/pet_Exotico.dart';
import 'package:olapets/view/meus_pets/meus_pets_screen.dart';
import 'package:olapets/view/notificacoes_1/notificacoes_1_screen.dart';
import 'package:olapets/view/notificacoes_2/notificacoes_2_screen.dart';
import 'package:olapets/view/pet_news/pet_news_screen.dart';
import 'package:olapets/view/splash_Screen/splash_Screen.dart';
import 'package:olapets/view/tutorial/tutorial.dart';
import 'package:olapets/view/tutorial/tutorial_5.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: KRedColor,
      title: "olapetss",
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: KRedColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: KPrimaryColor,
        accentColor: KGreyColor.withOpacity(0.2),
        // fontFamily: 'Gibson-Regular',
        textTheme: TextTheme(
          headline1:TextStyle(
            fontSize: 32,
            fontFamily: 'BalooChettan2-Regular',
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          headline3: TextStyle(
            fontSize: 20,
            fontFamily: 'BalooChettan2-Regular',
            fontWeight: FontWeight.w700,
            color: KSkyBlueColor,
          ),
          headline6: GoogleFonts.raleway(fontSize: 18),
          subtitle1: GoogleFonts.openSans(fontSize: 14, color: KSkyBlueColor),
          subtitle2: GoogleFonts.openSans(
            fontSize: 11,
            color: KGreyColor,
          ),
          bodyText2: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          caption: GoogleFonts.balooChettan(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      home: SplashScreen(),
      // initialRoute: '/bottomNavBar',
      getPages: [
        GetPage(name: '/splash_Screen', page: () => SplashScreen()),
        GetPage(name: '/drawer_Gato_2', page: () => DrawerGato2()),
        GetPage(name: '/tutorial', page: () => Tutorial()),
        GetPage(name: '/tutorial_5', page: () => Tutorial_5()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/login_1', page: () => Login_1()),
        GetPage(name: '/login_9', page: () => Login_9()),
        GetPage(name: '/login_11', page: () => Login_11()),
        GetPage(name: '/login_12', page: () => Login_12()),
        GetPage(name: '/login_42', page: () => Login_42()),
        GetPage(name: '/login_7', page: () => Login_7()),
        GetPage(name: '/login_2', page: () => Login_2()),
        GetPage(name: '/login_Steps', page: () => LoginSteps()),
        GetPage(name: '/cachorro_13', page: () => Cachorro_13()),
        GetPage(name: '/pet_Exotico', page: () => PetExotico()),
        GetPage(name: '/gato', page: () => Gato()),
        GetPage(name: '/gato_3', page: () => Gato_3()),
        GetPage(name: '/cachorro', page: () => Cachorro()),
        GetPage(name: '/cachorro_1', page: () => Cachorro_1()),
        GetPage(name: '/cachorro_2', page: () => Cachorro_2()),
        GetPage(name: '/cachorro_3', page: () => Cachorro_3()),
        GetPage(name: '/cachorro_4', page: () => Cachorro_4()),
        GetPage(name: '/cachorro_5', page: () => Cachorro_5()),
        GetPage(name: "/petnews", page: () => PetNewsScreen()),
        GetPage(name: "/notificacoes1", page: () => Notificacoes1Screen()),
        GetPage(name: "/notificacoes2", page: () => Notificacoes2Screen()),
        GetPage(name: "/bottomNavBar", page: () => BottomNavigationBarScreen()),
        GetPage(name: "/meusPets", page: () => MeusPetsScreen()),
        GetPage(name: "/home", page: () => HomeScreen()),
        GetPage(name: "/notificacoes", page: () => NotificacoesScreen()),
        GetPage(name: "/eventos", page: () => EventosScreen()),
        GetPage(name: "/eventos2", page: () => Eventos2Screen()),
        GetPage(name: "/clube1", page: () => Clube1Screen()),
        GetPage(name: "/ajuda", page: () => AjudaScreen()),
        GetPage(name: "/configuracoes", page: () => ConfiguracoesScreen()),
        GetPage(name: "/clube", page: () => ClubeScreen()),
      ],
    );
  }
}
