import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'gradientcard.dart';
import 'gradientcolor.dart';
import 'dart:math';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;

class YuzdeBolumu extends StatefulWidget {
  @override
  YuzdeBolumuState createState() => YuzdeBolumuState();
}

class YuzdeBolumuState extends State<YuzdeBolumu> {
  int _current = 0;
  double rating = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S.A"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(gradient: GradientColors.arkaplan),
              child: testevethayirBolumu(),
            ),
          ),
        ],
      ),
    );
  }

  Widget testevethayirBolumu() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buttonDemo(context),
        sliderTasarim(),
        altProfilBolumu(),
      ],
    );
  }

  Widget buttonDemo(context) {
    final basicSlider = CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int itemIndex) => GradientCard(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        gradient: GradientColors.anasayfaswiper,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("asdf"),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Text("asdf"),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          basicSlider,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              child: InkWell(
                onTap: () {
                  basicSlider.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/digericonlar/geri.png"),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  basicSlider.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/digericonlar/ileri.png"),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ]);
  }

  Widget sliderTasarim() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.12,
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Text(
            "${rating.toInt()}",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Slider(
          value: rating,
          min: 0,
          max: 100,
          //label: "${rating.toInt()}",
          activeColor: Colors.pink,
          divisions: 100,
          inactiveColor: Colors.white,
          onChanged: (newRating) {
            setState(() {
              rating = newRating;
            });
          },
        ),
      ],
    );
  }
}

Widget altProfilBolumu() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: FlutterLogo(size: 56.0), // Profil Fotoları gelecek
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: FlutterLogo(size: 56.0),
      ),
    ],
  );
}

Widget sliderGosterge(Animation coloranim) {
  return Container(
    alignment: Alignment.center,
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: coloranim.value,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Text(
      "asd",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15),
    ),
  );
}

List<Widget> child = [
  for (int i = 1; i < 10; i++)
    Text(
      "BURAYA ARTIK SORULARI KOYABİLİRİZ $i",
      style: TextStyle(color: Colors.white),
    ),
];
