import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';


class Notificacoes2Screen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerGato2(),
      appBar: AppBarWidget2(_scaffoldKey),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              Text("Termos de Uso e Política de Privacidade ",style: Theme.of(context).textTheme.headline2!,),
              SizedBox(height: 10,),
              Text("Das Partes",style:Theme.of(context).textTheme.headline2!,),
              SizedBox(height: 10,),
              Text("DIGITAL PET CLUB PUBLIDIDADE LTDA,",style: Theme.of(context).textTheme.headline2!,),
              Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
