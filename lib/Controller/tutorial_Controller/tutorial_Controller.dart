import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/model/tutorial_Model/tutorial_Model.dart';
import 'package:get/get.dart';
import 'package:olapets/view/login/login.dart';

class TutorialController extends GetxController {
  var pageController = PageController();
  var index = 0;
  var selectedPageIndex = 0.obs;
  var buttonColor = KSkyBlueColor;

  moveNext() {
    pageController.nextPage(
      duration: Duration(
        microseconds: 300,
      ),
      curve: Curves.ease,
    );
  }



  List<TutorialModel> tutorialModel = [
    TutorialModel(
      image: 'assets/t1.png',
      title: 'Benefícios\n- Incríveis -',
      subtitle:
          'Selecionamos as principais empresas Pet\nFriendly que oferecem os melhores\ndescontos para você.',
      bgColor: KSkyBlueColor,
    ),
    TutorialModel(
      image: 'assets/Component 44 – 1.png',
      title: 'Tudo sobre\n- mundo Pet -',
      subtitle:
          'As principais noticias do mundo Pet\n selecionadas e segmentadas',
      bgColor: KParrotColor,
    ),
    TutorialModel(
      bgColor: KLightGreyColor,
      haveWidget: true,
    ),
  ];

  List<TutorialModel> get getTutorialModelData => tutorialModel;
}
