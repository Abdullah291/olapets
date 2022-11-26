import 'package:flutter/material.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/myText.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class EnterName extends StatefulWidget {

  @override
  _EnterNameState createState() => _EnterNameState();
}

class _EnterNameState extends State<EnterName> {
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
                color: Colors.black.withOpacity(0.2)
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
            margin: EdgeInsets.only(top: 50),
            child: MyTextField(
              hintText: "Nome do pet",
            ),
          ),
        ],
      ),
    );
  }
}
