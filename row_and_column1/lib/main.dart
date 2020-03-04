import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),

      home: Scaffold(
        appBar: AppBar(
          title:  Text(
            "Row and Column",
            style: TextStyle(fontSize: 25, color: Colors.teal ),
          ),
          backgroundColor: Colors.black12,
        ),

        body: ColumnAndRow(),
        backgroundColor: Colors.blueGrey,



      ),
    );
  }
}

class ColumnAndRow extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.teal,
        height: 250,
        width: 250,

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Column(
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.adb),
                ),

                FloatingActionButton(
                  backgroundColor: Colors.brown,
                  child: Icon(Icons.person),
                ),

                FloatingActionButton(
                  backgroundColor: Colors.brown,
                  child: Icon(Icons.airplay),
                ),

                FloatingActionButton(
                  backgroundColor: Colors.brown,
                  child: Icon(Icons.account_balance),
                ),
              ],

            ),
            FloatingActionButton(
              backgroundColor: Colors.brown,
              child: Icon(Icons.call),
            ),

            FloatingActionButton(
              backgroundColor: Colors.brown,
              child: Icon(Icons.print),
            ),

            FloatingActionButton(
              backgroundColor: Colors.brown,
              child: Icon(Icons.delete),
            )

          ],


        ),

      ),
    );

  }
}