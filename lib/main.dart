import 'package:flutter/material.dart';
import 'package:proje1_burc_rehberi/burc_detay.dart';
import 'package:proje1_burc_rehberi/burc_liste.dart';
import 'package:proje1_burc_rehberi/utils/strings.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      title: "Burc Rehberi",
      debugShowCheckedModeBanner: false,

      initialRoute: "/burcListesi",

      routes: {
        "/" : (context) => BurcListesi(),
        "/burcListesi" : (context) => BurcListesi(),
      },

      onGenerateRoute: (RouteSettings settings){

        List<String> pathElemanlari = settings.name.split("/");
        if(pathElemanlari[1] == "burcDetay"){
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }else{
          return null;
        }

      },

      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }

}