import 'package:flutter/material.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Login15 extends StatefulWidget {
  @override
  _Login15State createState() => _Login15State();
}

class _Login15State extends State<Login15> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //CPF
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: MyTextField(
              hintText: "Celular",
            ),
          ),
        ],
      ),
    );
  }
}
