import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcard.dart';
import 'package:tanismauygulamasi/onur_pages/gradient.dart';

class SoruSecmeVeHazirlama extends StatefulWidget {
  @override
  _SoruSecmeVeHazirlamaState createState() => _SoruSecmeVeHazirlamaState();
}

class _SoruSecmeVeHazirlamaState extends State<SoruSecmeVeHazirlama> {
  double width;
  double height;
  List<double> animatedContainerSize = new List<double>(2);
  CarouselSlider slider;
  @override
  void initState() {
    // TODO: implement initState
    animatedContainerSize[0] = 100.0;
    animatedContainerSize[1] = 100.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    setState(() {
      animatedContainerSize[0] = height * 0.10;
      animatedContainerSize[1] = width * 0.4;
    });

    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("İstediğin Soru Tipini Seç",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  child: circleImages("percent", "png"),
                  onTap: () {
                    setState(() {
                      animatedContainerSize[0] = height * 0.25;
                    });
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: circleImages("abcd", "png"),
                  onTap: () {},
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: circleImages("evethayirsorusec", "png"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sorunu Hazirla",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
         Slider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              child: InkWell(
                onTap: () {
                  slider.previousPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.linear);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.075,
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/digericonlar/onceki.png"),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  slider.nextPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.linear);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.075,
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/digericonlar/sonraki.png"),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              InkWell(
                child: circleImages("noo", "png"),
                onTap: () {},
              ),
              InkWell(
                child: circleImages("yess", "png"),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Hazırlamayı Bitir",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              height: height * 0.08,
              width: width * 0.50,
              decoration: BoxDecoration(
                gradient: GradientColors2.seablue,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Slider() {
    slider = CarouselSlider.builder(
      itemCount: 5,
      onPageChanged: (index) {
        setState(() {
          /*  soruNo = index;
              animatedContainerSize[0] = 100.0;
              animatedContainerSize[1] = 100.0;
              if (siklar[index] != null) {
                animatedContainerSize[siklar[index]] = 150.0;
              }*/
        });
      },
      itemBuilder: (BuildContext context, int itemIndex) => GradientCard(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        gradient: GradientColors2.sexyblue,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: new InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: "Sorunuzu Giriniz",
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                ),
                maxLength: 100,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                // onFieldSubmitted: (_) => FocusScope.of(globalKey.currentContext).nextFocus(),
                // controller: nameController,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Text(
                    '${itemIndex + 1}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    return slider;
  }

  Widget circleImages(String title, String uzanti) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.fastLinearToSlowEaseIn,
      height: animatedContainerSize[0],
      width: animatedContainerSize[0],
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('images/digericonlar/$title.$uzanti'),
          fit: BoxFit.contain,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
