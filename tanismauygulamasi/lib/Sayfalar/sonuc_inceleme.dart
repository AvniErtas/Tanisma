import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcard.dart';
import 'package:tanismauygulamasi/onur_pages/gradient.dart';

class SonucInceleme extends StatelessWidget {
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
              gradient: GradientColors2.listGradient,
              child: Center(
                child: ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset("assets/profile.jpeg"),
                      ),
                      VerticalDivider(
                        color: Colors.white,
                        width: 10,
                        thickness: 1.50,
                      ),
                    ],
                  ),
                  title: Text(
                    'Avni Ertaş',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Test Puanı : ',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "35",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: Icon(Icons.share),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
