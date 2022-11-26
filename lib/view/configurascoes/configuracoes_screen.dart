import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';


class ConfiguracoesScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerGato2(),
      appBar: AppBarWidget2(_scaffoldKey),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text("Configurações",style: Theme.of(context).textTheme.headline1!.copyWith(color: KExtraLightColor),)),
            SwitchListTile(
                value: true, onChanged: (value){},
                title: Text("Receber Notificação?",style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),),
                activeColor: KRedColor,

            ),

            SizedBox(height: 20,),
            Container(
              width: 200,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: KRedColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text("LIMPAR NOTIFICAÇÕES",style:Theme.of(context).textTheme.subtitle1!.copyWith(color:KPrimaryColor),)),
            )
          ],
        ),
      ),
    );
  }
}
