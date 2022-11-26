import 'package:get/get.dart';
import 'package:olapets/model/login_Steps_Model/login_Steps.dart';
import 'package:olapets/view/cachorro_13/cachorro_13.dart';
import 'package:olapets/view/login/steps/login_10.dart';
import 'package:olapets/view/login/steps/login_13.dart';
import 'package:olapets/view/login/steps/login_14.dart';
import 'package:olapets/view/login/steps/login_15.dart';
import 'package:olapets/view/login/steps/login_16.dart';
import 'package:olapets/view/login/steps/login_17.dart';

class LoginStepsController extends GetxController {
  int index = 0;
  List<LoginStepsModel> loginSteps = [
    LoginStepsModel(
      widget: Login10(),
      haveOtherOptions: true,
    ),
    LoginStepsModel(
      widget: Login13(),
    ),
    LoginStepsModel(
      widget: Login14(),
    ),
    LoginStepsModel(
      widget: Login15(),
    ),
    LoginStepsModel(
      widget: Login16(),
    ),
    LoginStepsModel(widget: Login17(), buttonText: "Finalizar"),
  ];

  List<LoginStepsModel> get getLoginSteps => loginSteps;

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
      index++;
      update();
    } else if (index == 4) {
      index++;
      update();
    } else if (index == 5) {
      Get.off(() => Cachorro_13());
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
