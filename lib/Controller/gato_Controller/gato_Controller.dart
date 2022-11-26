import 'package:get/get.dart';
import 'package:olapets/view/bottomNavBar/bottomNavBar_screen.dart';
import 'package:olapets/view/cachorro_13/cachorro_13.dart';
import 'package:olapets/view/login/login_Widgets/choose_Gender.dart';
import 'package:olapets/view/login/login_Widgets/date_Of_Birth.dart';
import 'package:olapets/view/login/login_Widgets/enter_Name.dart';
import 'package:olapets/view/login/login_Widgets/raca.dart';

class GatoController extends GetxController {
  int index = 0;

  List data = [
    EnterName(),
    ChoseGender(),
    DateOfBirth(),
    Raca(),
  ];

  List get getData => data;

  moveNext() {
    if (index == 0) {
      index++;
      update();
    } else if (index == 1) {
      index++;
      update();
    } else if (index == 2) {
      index++;
      update();
    } else if (index == 3) {
      Get.off(() => BottomNavigationBarScreen());
      update();
    }
  }

  moveBack() {
    if (index == 0) {
      Get.back();
    } else {
      index--;
    }
    update();
  }
}
