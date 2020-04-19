import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcard.dart';

import 'gradient.dart';

class Testler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double cardWidth = width * 0.2;
    double cardHeight = height * 0.15;
    return Scaffold(
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: cardHeight,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GradientCard(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              gradient: GradientColors2.purplelove,
              child: Center(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: width*0.2,
                      height: height*0.08,
                      child: Image.asset("images/kategoriresimler/Eglence.png",
                          fit: BoxFit.contain),
                    ),
                  ),
                  title: Text(
                    'Lorem ipsum dolor sit amet, ante metus, in etiam diam.',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Soru Sayısı: 15',
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
