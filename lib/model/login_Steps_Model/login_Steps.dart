import 'package:flutter/cupertino.dart';

class LoginStepsModel {
  var widget, buttonText;
  bool? haveOtherOptions;

  LoginStepsModel({
    @required this.widget,
    this.buttonText = "proximo",
    this.haveOtherOptions = false,
  });
}
