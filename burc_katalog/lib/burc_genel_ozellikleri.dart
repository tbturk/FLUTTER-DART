import 'dart:math';

import 'package:burc_katalog/burc_katalogu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'burclar.dart';
import 'burclarin_ozellikleri.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcGenelOzellikleri extends StatefulWidget {
  int gelenBurcIndex;

  static Burclar tiklanilanBurc;
  BurcGenelOzellikleri(this.gelenBurcIndex);

  @override
  _BurcGenelOzellikleriState createState() => _BurcGenelOzellikleriState();
}

class _BurcGenelOzellikleriState extends State<BurcGenelOzellikleri> {
  Color appBarRenk;
  Color containerRenk;
  PaletteGenerator paletteGenerator;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BurcGenelOzellikleri.tiklanilanBurc =
    BurcKatalogu.butunBurclar[widget.gelenBurcIndex];
    appBarRengiBul();
  }
  void appBarRengiBul(){
    Future<PaletteGenerator> fPaletteGenerator =
    PaletteGenerator.fromImageProvider(AssetImage(
        "images/burclar/${BurcGenelOzellikleri.tiklanilanBurc.burcGenelOzellikleriResim}"));

    fPaletteGenerator.then((value) {
      paletteGenerator = value;
      setState(() {
        appBarRenk = paletteGenerator.mutedColor.color;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    debugPrint(widget.gelenBurcIndex.toString());
    // TODO: implement build



    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            expandedHeight: 300,
            backgroundColor: appBarRenk != null ? appBarRenk : Colors.black,
            title: Text(
              "${BurcGenelOzellikleri.tiklanilanBurc.burcAdi} Burcunun Genel Özellikleri",
              style: TextStyle(fontSize: 19),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/burclar/" +
                    BurcGenelOzellikleri
                        .tiklanilanBurc.burcGenelOzellikleriResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate(burclarinGenelOzellikleriniAta,
                childCount: Ozellikler.Burc_Ozellikleri_Basliklari.length),
          )
        ],
      ),
    );
  }

  Widget burclarinGenelOzellikleriniAta(BuildContext context, int index) {


    return Container(
      height: 400,
      color: renkBul(index),
      alignment: Alignment.center,
      child: Text(
        "${Ozellikler.Burc_Ozellikleri_Basliklari[index]}\n\n${BurcGenelOzellikleri.tiklanilanBurc.burcGenelOzellikleri[index]}",style: TextStyle(
        fontSize: 15,color: Colors.white,
      ),
      ),
    );
  }

  Color renkBul(index) {
    return paletteGenerator.paletteColors[(index)%9].color;
  }

}
