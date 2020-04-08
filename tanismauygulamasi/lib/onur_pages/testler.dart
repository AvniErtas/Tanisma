import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

import 'gradient.dart';

class Testler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double cardWidth = width * 0.2;
    double cardHeight = height * 0.15;
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: cardHeight,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: GradientCard(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            gradient: GradientColors.listGradient,
            child: Center(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: FlutterLogo(size: 56.0),
                ),
                title: Text('Lorem ipsum dolor sit amet, ante metus, in etiam diam.',style: TextStyle(fontSize: 16),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text('Soru Sayısı: 15',textAlign: TextAlign.end,),
                ),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ),
        );
      },
    );

  }
}
