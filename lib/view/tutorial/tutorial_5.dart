import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/myButton.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Tutorial_5 extends StatefulWidget {
  @override
  _Tutorial_5State createState() => _Tutorial_5State();
}

class _Tutorial_5State extends State<Tutorial_5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KRedColor,
      appBar: AppBar(
        backgroundColor: KRedColor,
        elevation: 0,
        title: GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: KPrimaryColor,
                  size: 20,
                ),
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        children: [
          MyText(
            text: "Cadastre-se no olá pet",
            size: 40,
            weight: FontWeight.bold,
            fontFamily: 'BalooChettan2-Regular',
            align: TextAlign.center,
            color: KPrimaryColor,
          ),
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 30),
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: KBlackColor.withOpacity(0.1),
            ),
            child: Center(
              child: ListTile(
                leading: Image.asset('assets/camera.png'),
                title: MyText(
                  text: "Imagem de perfil",
                  size: 18,
                  color: KPrimaryColor,
                ),
              ),
            ),
          ),
          spaceVertical(15),
          MyTextField(
            hintText: 'Nome Completo',
          ),
          spaceVertical(20),
          MyTextField(
            hintText: 'E-mail',
          ),
          spaceVertical(20),
          MyTextField(
            hintText: 'CPF',
          ),
          spaceVertical(20),
          MyTextField(
            hintText: 'Celular',
          ),
          spaceVertical(20),
          MyTextField(
            hintText: 'Nascimento',
          ),
          spaceVertical(20),
          MyTextField(
            hintText: 'Senha',
          ),
          spaceVertical(20),
          MyTextField(
            hintText: 'Confirmar Senha',
          ),
          spaceVertical(60),
          Center(
            child: Container(
              width: 120,
              child: BorderButton(
                text: 'CADASTRAR',
                textSize: 14,
                textColor: KPrimaryColor,
                height: 52,
                haveIcon: false,
                borderColor: KPrimaryColor,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
