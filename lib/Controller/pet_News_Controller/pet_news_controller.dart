import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PetNewsModel{
   final id;
   String? image;
   String? title;
   bool? isSelected=false;
   PetNewsModel({this.id,this.image,this.title,this.isSelected});
}


class PetNewsController extends GetxController{

  List<PetNewsModel> list=[
    PetNewsModel(id:0,image:"assets/1.png",title: "Ver Todas",isSelected: false),
    PetNewsModel(id:1,image:"assets/2.png",title: "Bem-estar",isSelected: false),
    PetNewsModel(id:2,image:"assets/Group 221.png",title: "Eventos",isSelected: false),
    PetNewsModel(id:3,image:"assets/1.png",title: "Ciência",isSelected: false),
    PetNewsModel(id:4,image:"assets/icones.png",title: "Social",isSelected: false),
    PetNewsModel(id:5,image:"assets/Group 351.png",title: "Locais",isSelected: false),
    PetNewsModel(id:6,image:"assets/new.png",title: "Inovação",isSelected: false),
  ];

  String selection="";


  void selectedNews(int id){
    var select=list.firstWhere((element) => element.id==id);

    for(int i=0;i<list.length;i++){
      if(select.id==list[i].id){
        select.isSelected = true;
        selection=select.title!;
      }
      else{
        list[i].isSelected=false;
      }
    }

    update();
  }

}