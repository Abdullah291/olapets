import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';


class Notificacoes1Screen extends StatelessWidget {
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
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search,size: 22,color: KSkyBlueColor,),
                  hintText: "Digite a empresa desejada",
                  hintStyle: TextStyle(
                    color: KGreyColor.withOpacity(0.8),
                  )
                ),

              ),
              SizedBox(height: 25,),

              Text("- Não há benefícios para serem exibidos -",style: TextStyle(color: KGreyColor),textAlign: TextAlign.center,),





            ],
          ),
        ),
      ),
    );
  }
}
