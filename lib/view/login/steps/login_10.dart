import 'package:flutter/material.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/myText.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Login10 extends StatefulWidget {
  @override
  _Login10State createState() => _Login10State();
}

class _Login10State extends State<Login10> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffB3415A)
            ),
            child: Center(
              child: ListTile(
                leading: Image.asset('assets/camera.png'),
                title: Text(
                  "Imagem de perfil",
                  style: TextStyle(
                    fontFamily: "Gibson",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  color: KPrimaryColor,
                  ),
                ),
                subtitle:Text("(opcional)",
                style: TextStyle(
                  fontFamily: "Gibson-Regular",
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: KPrimaryColor,
                ),),

              ),
            ),
          ),
          //Name complete
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: MyTextField(
              hintText: "Nome completo",
            ),
          ),
        ],
      ),
    );
  }
}
