import 'package:flutter/material.dart';
import 'appbar.dart';
import 'gradientcolor.dart';

class GonderiTipi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTasarim(),
      body: Container(
        decoration: BoxDecoration(
          gradient: GradientColors.arkaplan,
        ),
        child: Center(
          child: GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(10),
              itemCount: 4,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {}, // Bir Sonraki Sekmeye geçmek için
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: renkler[index + 12].gradient,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          kimicin[index],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(secimresimleri[index]),
                                fit: BoxFit.contain,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }

  
}

List<String> secimresimleri = [
  "images/secimresimleri/sevgiliye.png",
  "images/secimresimleri/Florte.png",
  "images/secimresimleri/kadin.png",
  "images/secimresimleri/erkek.png",
];

List<String> kimicin = [
  "Sevgili",
  "Flört",
  "Kadın",
  "Erkek",
];
