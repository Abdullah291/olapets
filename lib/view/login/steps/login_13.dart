import 'package:flutter/material.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class Login13 extends StatefulWidget {
  @override
  _Login13State createState() => _Login13State();
}

class _Login13State extends State<Login13> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Email
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: MyTextField(
              hintText: "E-mail",
            ),
          ),
        ],
      ),
    );
  }
}
