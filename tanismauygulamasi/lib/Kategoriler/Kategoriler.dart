import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/appbar.dart';
import 'package:tanismauygulamasi/Sayfalar/gonderitipi.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcard.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcolor.dart';

class Kategoriler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return kategoriler();
  }
}

Widget kategoriler() {
  List<String> kategoriIsmi = [
    "Eğlence",
    "Kitap",
    "İş",
    "Film-Dizi",
    "Gezi",
    "Aile",
    "Teknoloji",
    "Yaşam Tarzı",
    "Aşk",
    "Yemek",
    "Ahlaki İkilem",
    "Diğer"
  ];
  List<String> kategoriImageURL = [
    "images/kategoriresimler/Eglence.png",
    "images/kategoriresimler/Kitap.png",
    "images/kategoriresimler/İs.png",
    "images/kategoriresimler/Film-Dizi.png",
    "images/kategoriresimler/Gezi.png",
    "images/kategoriresimler/Aile.png",
    "images/kategoriresimler/Teknoloji.png",
    "images/kategoriresimler/YasamTarzi.png",
    "images/kategoriresimler/ask.png",
    "images/kategoriresimler/Yemek.png",
    "images/kategoriresimler/ahlaki-ikilem.png",
    "images/kategoriresimler/diger.png"
  ];

  return Scaffold(
    appBar: appBarTasarim(),
    body: Container(
      decoration: BoxDecoration(
        gradient: GradientColors.arkaplan,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GridView.builder(
              shrinkWrap: true,
              primary: true,
              itemCount: kategoriIsmi.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return kategoriView(
                  context,
                  kategoriIsmi[index],
                  kategoriImageURL[index],
                  index,
                );
              }),
        ],
      ),
    ),
  );
}

Widget kategoriView(
  BuildContext context,
  String kategoriIsim,
  String kategoriImage,
  int index,
) {
  return InkWell(
    onTap: () {
      Navigator.push(
          (context), MaterialPageRoute(builder: (context) => GonderiTipi()));
    },
    child: GradientCard(
      gradient: renkler[index].gradient,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            kategoriIsim,
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.start,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                kategoriImage,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}



