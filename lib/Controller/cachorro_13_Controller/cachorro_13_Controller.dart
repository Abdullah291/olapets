import 'package:flutter/cupertino.dart';
import 'package:olapets/constant/constant.dart';
import 'package:get/get.dart';
import 'package:olapets/model/cachorro_Gato_PetExotico_Slideable_Screens_Model/cachorro_Gato_PetExotico_Slideable_Screens.dart';
import 'package:olapets/view/login/cachorro/cachorro.dart';
import 'package:olapets/view/login/gato/gato.dart';
import 'package:olapets/view/login/pet_Exotico/pet_Exotico.dart';

class Cachorro13Controller {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  List<CachorroGatoPetExoticoSlideableScreensModel> data = [
    CachorroGatoPetExoticoSlideableScreensModel(
      heading: 'Cadastre\nSeu Pet',
      img: 'assets/Mask Group 2.png',
      title: 'Sim, eu tenho um',
      buttonText: 'Cachorro',
      bgColor: GradientColor.redGradient2,
      onTap: () => Get.to(Cachorro()),
    ),
    CachorroGatoPetExoticoSlideableScreensModel(
      heading: 'Cadastre\nSeu Pet',
      img: 'assets/Group 333.png',
      title: 'Sim, eu tenho um',
      buttonText: 'Gato',
      bgColor: GradientColor.greenGradient,
      onTap: () => Get.to(Gato()),
    ),
    CachorroGatoPetExoticoSlideableScreensModel(
      heading: 'Cadastre\nSeu Pet',
      img: 'assets/Mask Group 15.png',
      title: 'Sim, eu tenho um',
      buttonText: 'Pet exótico',
      bgColor: GradientColor.skyBlueGradient,
      onTap: () => Get.to(PetExotico()),
    ),
  ];

  List<CachorroGatoPetExoticoSlideableScreensModel> get getData => data;
}
