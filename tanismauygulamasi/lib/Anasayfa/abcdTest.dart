import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcard.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcolor.dart';

class AbcdTestBolumu extends StatefulWidget {
  @override
  _AbcdTestBolumuState createState() => _AbcdTestBolumuState();
}

class _AbcdTestBolumuState extends State<AbcdTestBolumu> {
  double heightMedia;
  double widthMedia;
  List<int> siklar = new List<int>(5);
  List<Border> border = new List<Border>(4);
  CarouselSlider carouselSlider;
  int soruNo = 0;
  @override
  Widget build(BuildContext context) {
    heightMedia = MediaQuery.of(context).size.height;
    widthMedia = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: GradientColors.arkaplan),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back,
                        size: 35,
                      ),
                    )),
              ),
              Expanded(child: testevethayirBolumu()),
            ],
          ),
        ),
      ),
    );
  }

  Widget testevethayirBolumu() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(child: buttonDemo(context)),
        Expanded(child: abcdSiklari()),
      ],
    );
  }

  Widget buttonDemo(context) {
    final basicSlider = slider();

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
                  height: heightMedia * 0.05,
                  width: widthMedia * 0.25,
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
                  height: heightMedia * 0.05,
                  width: widthMedia * 0.25,
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

  Widget abcdSiklari() {
    return ListView.builder(
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Material(
            color: Colors.white.withOpacity(0.0),
            child: InkWell(
              onTap: () => {
                this.setState(() {
                  siklar[soruNo] = index;

                  for (int i = 0; i < border.length; i++) {
                    if (i != index) border[i] = null;
                  }
                  border[index] = Border.all(width: 5);
                  carouselSlider.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                  Future.delayed(const Duration(milliseconds: 500), () {
                    setState(() {
                      border[index] = null;
                    });
                  });
                })
              },
              child: Container(
                height: heightMedia * 0.09,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  gradient: renkler[index + 12].gradient,
                  borderRadius: BorderRadius.circular(15.0),
                  border: border[index],
                ),
                child: Center(child: Text("Bu bir şıktır")),
              ),
            ),
          );
        });
  }

  CarouselSlider slider() {
    carouselSlider = CarouselSlider.builder(
        height: heightMedia * 0.27,
        itemCount: 5,
        onPageChanged: (index) {
          setState(() {
            soruNo = index;
            for (int i = 0; i < border.length; i++) {
              border[i] = null;
            }
            if (siklar[index] != null) {
              border[siklar[index]] = Border.all(width: 5);
            }
          });
        },
        itemBuilder: (BuildContext context, int itemIndex) {
          return GradientCard(
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
                    Text("Bu bir sorudur.??? Soru soru"),
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
          );
        });
    return carouselSlider;
  }
}
