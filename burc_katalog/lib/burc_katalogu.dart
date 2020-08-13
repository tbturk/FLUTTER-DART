import 'package:burc_katalog/burclarin_ozellikleri.dart';
import 'package:flutter/cupertino.dart';
import 'package:burc_katalog/burclar.dart';
import 'package:flutter/material.dart';

class BurcKatalogu extends StatelessWidget {
  static List<Burclar> butunBurclar = burclarinOzellikleriniAta();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red.shade200,
      appBar: AppBar(
        title: Center(child: Text("Burç Kataloğu")),
        backgroundColor: Colors.teal.shade700,
      ),
      body: GridView.builder(
          itemCount: butunBurclar.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext contex, int index) {
            return GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "images/burclar/${butunBurclar[index].burcKatologuResim}"),
                  ),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:5),
                      child: Text(
                          "${butunBurclar[index].burcAdi}",
                          style: TextStyle(
                              fontSize: 20, color: Colors.teal.shade800),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text(
                          "${butunBurclar[index].burcTarihi}",
                          style: TextStyle(
                              fontSize: 15, color: Colors.teal.shade800),
                        ),
                    ),
                  ],
                ),
              ),
              onTap: () => Navigator.pushNamed(
                  context, "/burc_genel_ozellikleri/$index"),
            );
          }),
    );
  }

  static List<Burclar> burclarinOzellikleriniAta() {
    List<Burclar> burcTemp = [];

    for (int i = 0; i < Ozellikler.Burc_Adlari.length; i++) {
      String katologResim = Ozellikler.Burc_Adlari[i].toLowerCase() + ".png";
      String ozelliklerResim =
          Ozellikler.Burc_Adlari[i].toLowerCase() + "1.png";
      Burclar olusturulanBurclar = new Burclar(Ozellikler.Burc_Adlari[i],
          Ozellikler.Burc_Tarihleri[i], katologResim, ozelliklerResim);

      List<String> burclarinOzelliklerininListesi = [];
      for (int k = 0; k < Ozellikler.Burc_Ozellikleri_Basliklari.length; k++) {
        burclarinOzelliklerininListesi.add(Ozellikler.Burc_Ozellikleri[i][k]);
      }
      olusturulanBurclar.burcGenelOzellikleri = burclarinOzelliklerininListesi;
      burcTemp.add(olusturulanBurclar);
    }

    return burcTemp;
  }
}
