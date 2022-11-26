import 'package:flutter/material.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Login14 extends StatefulWidget {
  @override
  _Login14State createState() => _Login14State();
}

class _Login14State extends State<Login14> {
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
              hintText: "CPF",
            ),
          ),
        ],
      ),
    );
  }
}
