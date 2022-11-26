import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';


class NotificacoesScreen extends StatelessWidget {
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
              Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Notificações",style: Theme.of(context).textTheme.headline1!.copyWith(color: KExtraLightColor),)),


              ListView.builder(
                shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Text("27/08",style: Theme.of(context).textTheme.headline3),
                      title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text("Lorem.",style: Theme.of(context).textTheme.headline2),),
                      horizontalTitleGap: 15,
                      subtitle: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, ",style:Theme.of(context).textTheme.headline3!.copyWith(color: KGreyColor),maxLines: 3,overflow: TextOverflow.ellipsis,),
                    );
                  }
              ),




            ],
          ),
        ),
      ),
    );
  }
}
