import 'package:get/get.dart';
import 'package:olapets/view/clube/clube_screen.dart';
import 'package:olapets/view/clube_1/clube_1_screen.dart';
import 'package:olapets/view/eventos/eventos_screen.dart';
import 'package:olapets/view/eventos_2/eventos_2_screen.dart';
import 'package:olapets/view/home/home_screen.dart';
import 'package:olapets/view/pet_news/pet_news_screen.dart';




class NoticiasModel{
  final image;
  final title;
  final subtitle;
  final date;
  NoticiasModel({
    this.image,
    this.title,
    this.subtitle,
    this.date,
  });
}


class NoticiasController extends GetxController{

   List<NoticiasModel> box=[
     NoticiasModel(image: "assets/Mask Group 7.png",title: "Tobi e Rexie: Animais dão lições sobre aceitação e inclusão",subtitle: "Adotar um animal com deficiência física é um ato de amor que exige compromisso com as necessidades do bichinho ",date: "23/08/2021",),
     NoticiasModel(image: "assets/Mask Group 31.png",title: "Tobi e Rexie: Animais dão lições sobre aceitação e inclusão",subtitle: "Adotar um animal com deficiência física é um ato de amor que exige compromisso com as necessidades do bichinho ",date: "23/08/2021",),
     NoticiasModel(image: "assets/Mask Group 32.png",title: "Tobi e Rexie: Animais dão lições sobre aceitação e inclusão",subtitle: "Adotar um animal com deficiência física é um ato de amor que exige compromisso com as necessidades do bichinho ",date: "23/08/2021",),
     NoticiasModel(image: "assets/Mask Group 33.png",title: "Tobi e Rexie: Animais dão lições sobre aceitação e inclusão",subtitle: "Adotar um animal com deficiência física é um ato de amor que exige compromisso com as necessidades do bichinho ",date: "23/08/2021",),
   ];

   int selectedIndex=0;


   onItemSelection(int index){
       selectedIndex = index;
       update();
   }



   List li=[
     HomeScreen(),
     ClubeScreen(),
     PetNewsScreen(),
     EventosScreen(),
   ];

}