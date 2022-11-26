import 'package:flutter/material.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Login17 extends StatefulWidget {
  @override
  _Login17State createState() => _Login17State();
}

class _Login17State extends State<Login17> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: MyTextField(
              hintText: "Senha",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: MyTextField(
              hintText: "Confirmar senha",
            ),
          ),
        ],
      ),
    );
  }
}
