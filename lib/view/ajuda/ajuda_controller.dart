import 'package:get/get.dart';



class AjudaModel{
  final image;
  final title;
  AjudaModel({this.image,this.title});
}


class AjudaController extends GetxController{


  List<AjudaModel> list=[
    AjudaModel(image: "assets/Group 237.png",title: "Dúvidas"),
    AjudaModel(image: "assets/Group 237.png",title: "Sugestões"),
    AjudaModel(image: "assets/Group 237.png",title: "Elogios"),
    AjudaModel(image: "assets/Group 237.png",title: "Reclamações"),
    AjudaModel(image: "assets/Group 237.png",title: "Parcerias"),
  ];

}