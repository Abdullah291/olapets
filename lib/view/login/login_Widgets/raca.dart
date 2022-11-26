import 'package:flutter/material.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Raca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Raça",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'BalooChettan2-Regular',
              color: KPrimaryColor,
            ),
          ),
          spaceVertical(30),
          MyTextField(
            hintText: 'Selecionar Raça',
          ),
        ],
      ),
    );
  }
}