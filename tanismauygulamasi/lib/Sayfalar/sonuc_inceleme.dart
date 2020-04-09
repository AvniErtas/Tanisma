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
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: FlutterLogo(size: 56.0),
                  ),
                  title: Text(
                    'Avni Ertaş',
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Test Puanı : ',
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("35",style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,),
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
