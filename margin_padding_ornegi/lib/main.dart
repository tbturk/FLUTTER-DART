import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            accentColor: Colors.black),
        home: new Scaffold(
            appBar: AppBar(
              title: Text(
                "Margin Padding Örneği",
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  debugPrint("Harf Eklendi");
                },
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.add_circle_outline,
                  size: 40,
                  color: Colors.black,
                )),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    Container(
                      child: Text(
                        "D",
                        style: TextStyle(fontSize: 50),
                      ),
                      color: Colors.teal.shade800,
                      margin: EdgeInsets.only(right:20,left:3,top:3),
                      padding: EdgeInsets.symmetric(horizontal: 8.7,vertical: 5),

                    ),
                    Container(
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 50),
                      ),
                      color: Colors.teal.shade500,
                      margin: EdgeInsets.only(right:20,top:3),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),

                    ),


                    Container(
                      child: Text(
                        "R",
                        style: TextStyle(fontSize: 50),
                      ),
                      color: Colors.teal.shade400,
                      margin: EdgeInsets.only(top:3,right:20),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),

                    ),
                    Container(
                      child: Text(
                        "T",
                        style: TextStyle(fontSize: 50),
                      ),
                      color: Colors.teal.shade300,
                      margin: EdgeInsets.only(top:3,right:3),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    ),

                  ],
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      "E",
                      style: TextStyle(fontSize: 50),
                    ),
                    color: Colors.teal.shade700,
                    width: 50,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    margin: EdgeInsets.all(3),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      "R",
                      style: TextStyle(fontSize: 50),
                    ),
                    color: Colors.teal.shade600,
                    width: 50,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    margin: EdgeInsets.all(3),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      "S",
                      style: TextStyle(fontSize: 50),
                    ),
                    color: Colors.teal.shade500,
                    width: 50,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    margin: EdgeInsets.all(3),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      "L",
                      style: TextStyle(fontSize: 50),
                    ),
                    color: Colors.teal.shade400,
                    width: 50,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    margin: EdgeInsets.all(3),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      "E",
                      style: TextStyle(fontSize: 50),
                    ),
                    color: Colors.teal.shade300,
                    width: 50,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    margin: EdgeInsets.all(3),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      "R",
                      style: TextStyle(fontSize: 50),
                    ),
                    color: Colors.teal.shade200,
                    width: 50,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    margin: EdgeInsets.all(3),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      "İ",
                      style: TextStyle(fontSize: 50),
                    ),
                    color: Colors.teal.shade100,
                    width: 50,
                    padding: EdgeInsets.all(18),
                    margin: EdgeInsets.all(3),
                  ),
                ),
              ],
            ))),
  );
}
