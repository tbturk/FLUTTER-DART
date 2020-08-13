import 'package:flutter/material.dart';

import 'burc_genel_ozellikleri.dart';
import 'burc_katalogu.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burç Katoloğu",


      //initialRoute: "/burcKatalogu",

      routes: {
      "/":(context)=>BurcKatalogu(),
      "/burcKatalogu":(context)=>BurcKatalogu(),
      },

      onGenerateRoute: (RouteSettings settings){
     List<String> pathElemanlari =settings.name.split("/");
     if(pathElemanlari[1]=="burc_genel_ozellikleri"){
       return MaterialPageRoute(builder: (context)=>BurcGenelOzellikleri(int.parse(pathElemanlari[2])));
     }
      },
      theme: ThemeData(
        backgroundColor: Colors.lightBlue,
      ),
    );
  }

}