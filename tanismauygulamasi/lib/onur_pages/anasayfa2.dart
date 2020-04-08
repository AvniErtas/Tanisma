import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

import 'gradient.dart';

class AnaSayfaImage2 extends StatelessWidget {
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: width,
                  height: height*0.55,
                ),
                Positioned(
                  top: height * 0.005,
                  right: width * 0.05,
                  child: circleImages("testsec"),
                ),
                Positioned(
                  top: height * 0.15,
                  left: width * 0.05,
                  child: circleImages("sonucincele"),
                ),
                Positioned(
                  top: height * 0.3,
                  right: width * 0.05,
                  child: circleImages("kesfet"),
                ),
              ],
            ),
            CarouselSlider.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int itemIndex) => GradientCard(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                gradient: GradientColors.listGradient,
                child: Center(
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: FlutterLogo(size: 56.0),
                    ),
                    title: Text('Lorem ipsum dolor sit amet, ante metus, in etiam diam.',style: TextStyle(fontSize: 16),),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Soru Sayısı: $itemIndex',textAlign: TextAlign.end,),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget circleImages(String title) {
    return Container(
      height: height * 0.25,
      width: width * 0.4,
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('assets/$title.png'),
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
