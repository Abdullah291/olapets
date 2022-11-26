import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/ajuda/ajuda_controller.dart';
import 'package:olapets/view/drawer/drawer_Gato_2.dart';
import 'package:olapets/view/widgets/appBar_widget_2.dart';



class AjudaScreen extends StatelessWidget {


  AjudaController controller=Get.put(AjudaController());
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
                  child: Text("Ajuda",style: Theme.of(context).textTheme.headline1!.copyWith(color: KExtraLightColor),)),
              Container(
                 alignment: Alignment.center,
                  child: Text("Entre em contato com a gente!",style: Theme.of(context).textTheme.headline3!.copyWith(color: KLightGreyColor3))),
              SizedBox(height: 25,),

              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: controller.list.length,
                  itemBuilder: (context,index){
                    AjudaModel am=controller.list[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 50,
                      decoration: BoxDecoration(
                        color: KSkyBlueColor,
                       borderRadius: BorderRadius.circular(10),
                      ),
                       child: Row(
                         children: [
                           Container(width:80 ,child: Image.asset(am.image,height: 20,width: 20,color: KPrimaryColor,)),
                      Expanded(child:   Text(am.title,style: Theme.of(context).textTheme.subtitle1!.copyWith(color: KPrimaryColor),),)
                         ],
                       ),
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
