import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'gradientcard.dart';
import 'gradientcolor.dart';

class EvetHayirBolumu extends StatefulWidget {
  @override
  _EvetHayirBolumuState createState() => _EvetHayirBolumuState();
}

class _EvetHayirBolumuState extends State<EvetHayirBolumu> {
  int _current = 0;
  int soruNo = 0;
  List<int> siklar = new List<int>(5);
  List<double> animatedContainerSize = new List<double>(2);
  CarouselSlider carouselSlider;

  @override
  void initState() {
    animatedContainerSize[0]=100.0;
    animatedContainerSize[1]=100.0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
        buttonDemo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {

                setState(() {
                  siklar[soruNo] = 0;
                  animatedContainerSize[0]=150.0;
                });
                Future.delayed(const Duration(milliseconds: 500), () {
                  setState(() {
                    animatedContainerSize[0]=100.0;
                  });
                });

                carouselSlider.nextPage(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.linear);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn,
                height: animatedContainerSize[0],
                width: animatedContainerSize[0],
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
             //       border: border[0],
                  image: DecorationImage(
                    image: AssetImage("images/digericonlar/evet.png"),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                  setState(() {
                    siklar[soruNo] = 1;
                    animatedContainerSize[1]=150;
                  });
                  Future.delayed(const Duration(milliseconds: 500), () {
                    setState(() {
                      animatedContainerSize[1]=100;
                    });
                  });

                  carouselSlider.previousPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.linear);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn,
                height: animatedContainerSize[1],
                width: animatedContainerSize[1],
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/digericonlar/hayir.png"),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget buttonDemo() {
    carouselSlider = CarouselSlider.builder(
      itemCount: 5,
      onPageChanged: (index) {
        setState(() {
          soruNo = index;
          animatedContainerSize[0]=100.0;
          animatedContainerSize[1]=100.0;
          if (siklar[index] != null) {
            animatedContainerSize[siklar[index]] = 150.0;
          }

        });
      },
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
                  child: Text('${itemIndex + 1}'),
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
        mainAxisSize: MainAxisSize.min,
        children: [
          carouselSlider,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              child: InkWell(
                onTap: () {
                  carouselSlider.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.075,
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
                  carouselSlider.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.075,
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
}


/* Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: GradientColors.anasayfaswiper,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "Sorular Burada Olacak",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ), */

/* 
Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            /* Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/digericonlar/geri.png"),
                    ),
                  ),
                ),
              ),
            ), */
            /* Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/digericonlar/ileri.png"),
                    ),
                  ),
                ),
              ),
            ), */
          ],
        ), */
