import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/Controller/login_Steps_Controller/login_Steps_Controller.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/model/login_Steps_Model/login_Steps.dart';
import 'package:olapets/view/login/login_7.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';

class LoginSteps extends StatefulWidget {
  @override
  _LoginStepsState createState() => _LoginStepsState();
}

class _LoginStepsState extends State<LoginSteps> {
  LoginStepsController _loginStepsController = Get.put(LoginStepsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: KRedColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: KRedColor,
        title: GestureDetector(
          onTap: () => _loginStepsController.moveBack(),
          child: Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: KPrimaryColor,
                  size: 20,
                ),
                spaceHorizontal(10),
                MyText(
                  size: 14,
                  color: KPrimaryColor,
                  text: "Voltar",
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: GetBuilder<LoginStepsController>(
          init: LoginStepsController(),
          builder: (controller) {
            LoginStepsModel _loginStepsModel =
                controller.getLoginSteps[controller.index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: _loginStepsModel.haveOtherOptions == true
                  ? MainAxisAlignment.spaceEvenly
                  : MainAxisAlignment.start,
              children: [
                //Heading

                Container(
                  margin: EdgeInsets.only(top:  _loginStepsModel.haveOtherOptions == true? 20: 80, bottom: 20),
                  child: MyText(
                    text: "Cadastre-se",
                    size: 32,
                    weight: FontWeight.bold,
                    color: KPrimaryColor,
                    fontFamily: 'BalooChettan2-Regular',
                  ),
                ),
                //Widgets
                Container(
                  child: _loginStepsModel.widget,
                ),

                //Steps
                FractionallySizedBox(
                  widthFactor: 0.5,
                  child: MyButton2(
                    onPressed: () => controller.moveNext(),
                    color: KPrimaryColor,
                    text: "${_loginStepsModel.buttonText}".toUpperCase(),
                    textSize: 14,
                    textColor: KRedColor,
                  ),
                ),
                //Other Options
                _loginStepsModel.haveOtherOptions == true
                    ? Column(
                      children: [
                        GestureDetector(
                          onTap: () => Get.off(() => Login_7()),
                          child: Text(
                            "Fazer Login",
                            style: TextStyle(
                              fontFamily: 'Gibson-Regular',
                              color: KPrimaryColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        spaceVertical(40),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: KPrimaryColor,width: 2)
                              ),
                              child: Image.asset(
                                'assets/fb-red.png',
                                color: KPrimaryColor,
                                height: 25,
                              ),
                            ),
                            spaceHorizontal(10),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: KPrimaryColor,width: 2)
                              ),
                              child: Image.asset(
                                'assets/google-red.png',
                                color: KPrimaryColor,
                                height: 25,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                    : SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
