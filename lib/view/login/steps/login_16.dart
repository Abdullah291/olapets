import 'package:flutter/material.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Login16 extends StatefulWidget {
  @override
  _Login16State createState() => _Login16State();
}

class _Login16State extends State<Login16> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Data de nascimento
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: MyTextField(
              hintText: "Data de nascimento",
            ),
          ),
        ],
      ),
    );
  }
}
