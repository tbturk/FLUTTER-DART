import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Image Kullanımı",
              style:TextStyle(fontSize: 22,color: Colors.white)),
          backgroundColor: Colors.black,

        ),

        body: AyinEvreleri(),
      ),
    );
  }

}

class AyinEvreleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          Text(
            "Ayın Evreleri",
            style: TextStyle(fontSize: 25,color: Colors.black45),),

          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          Row(

            children: <Widget>[
              Expanded(

                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:AssetImage("aylar/yeniay.jpg"),

                      ),
                      Text("Yeniay")
                    ],
                  )
              ),

              Expanded(

                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:AssetImage("aylar/hilal.jpg"),

                      ),
                      Text("Hilal")
                    ],
                  )
              ),

              Expanded(

                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:AssetImage("aylar/ilkdordun.jpg"),

                      ),
                      Text("İlkdördün")
                    ],
                  )
              ),

              Expanded(

                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:AssetImage("aylar/dolunay.jpg"),

                      ),
                      Text("Dolunay")
                    ],
                  )
              ),

              Expanded(

                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:AssetImage("aylar/sondordun.jpg"),

                      ),
                      Text("Sondördün")
                    ],
                  )
              ),

            ],
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
          ),
          Center(

            child: Container(
              height: 250,
              width: 250,
              child: FadeInImage.assetNetwork(
                  placeholder: "aylar/evre.gif",
                  image: "https://media.giphy.com/media/Qllf7zcBVJuak/giphy.gif"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          FlatButton(
            onPressed: () {

            },
            child: Text("MOON PHASES", style: TextStyle(fontSize: 30,color: Colors.black45),
            ),
          ),
        ],
      ),
    );
  }


}