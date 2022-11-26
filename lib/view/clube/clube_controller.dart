import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ClubeModel{
  final id;
  String? image;
  String? title;
  bool? isSelected=false;
  ClubeModel({this.id,this.image,this.title,this.isSelected});
}


class ClubeController extends GetxController{

  List<ClubeModel> list=[
    ClubeModel(id:0,image:"assets/p1.png",title: "Ver Todas",isSelected: false),
    ClubeModel(id:1,image:"assets/p2.png",title: "Compras",isSelected: false),
    ClubeModel(id:2,image:"assets/p1.png",title: "Lazer",isSelected: false),
    ClubeModel(id:3,image:"assets/p3.png",title: "Serviço",isSelected: false),
    ClubeModel(id:4,image:"assets/p4.png",title: "Pets",isSelected: false),
    ClubeModel(id:5,image:"assets/p5.png",title: "Gastronomia",isSelected: false),
    ClubeModel(id:6,image:"assets/p6.png",title: "Hotelaria",isSelected: false),
    ClubeModel(id:7,image:"assets/ffffff.png",title: "Bem-estar",isSelected: false),
  ];



  void selectedNews(int id){
    var select=list.firstWhere((element) => element.id==id);

    for(int i=0;i<list.length;i++){
      if(select.id==list[i].id){
        select.isSelected = true;
      }
      else{
        list[i].isSelected=false;
      }
    }

    update();
  }

}