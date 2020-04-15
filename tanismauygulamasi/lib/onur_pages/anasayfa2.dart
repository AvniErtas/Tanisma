import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcard.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcolor.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

import 'gradient.dart';

class AnaSayfaImage2 extends StatefulWidget {
  @override
  _AnaSayfaImage2State createState() => _AnaSayfaImage2State();
}

class _AnaSayfaImage2State extends State<AnaSayfaImage2>
    with SingleTickerProviderStateMixin {
  double width;
  double height;
  Duration myDuration = Duration(seconds: 1);
  AnimationController _controller;
  Animation animation;
  Animation animation2;
  SequenceAnimation siralianimasyon;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: myDuration,
    );

    siralianimasyon = SequenceAnimationBuilder()
        .addAnimatable(
            animatable: Tween<double>(begin: -200, end: 200), // Opacity için
            from: Duration.zero,
            to: Duration(seconds: 1),
            tag: "translate1")
        .addAnimatable(
            animatable: Tween<double>(begin: 400, end: 5),
            from: Duration(seconds: 1),
            to: Duration(seconds: 2),
            tag: "translate2")
        .addAnimatable(
            animatable: Tween<double>(begin: -200, end: 200),
            from: Duration(seconds: 2),
            to: Duration(seconds: 3),
            tag: "translate3")
        .animate(_controller);
    
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   width = MediaQuery.of(context).size.width;
   height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          width: width,
                          height: height * 0.55,
                        ),
                        Transform.translate(
                          offset:
                              Offset(siralianimasyon["translate1"].value, 0),
                          child: circleImages("testsec"),
                        ),
                        Transform.translate(
                          offset: Offset(siralianimasyon["translate2"].value,
                              height * 0.15),
                          child: circleImages("sonucincele"),
                        ),
                        /*  Positioned(
                          top: height * 0.15,
                          left: width * 0.05,
                          child: circleImages("sonucincele"),
                        ), */
                        Transform.translate(
                          offset: Offset(siralianimasyon["translate3"].value,
                              height * 0.3),
                          child: circleImages("kesfet"),
                        ),
                        /*  Positioned(
                          top: height * 0.3,
                          right: width * 0.05,
                          child: circleImages("kesfet"),
                        ), */
                        Positioned(
                          top: height * 0.5,
                          left: width * 0.015,
                          child: Text(
                            "Popüler Testler",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    CarouselSlider.builder(
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int itemIndex) =>
                          GradientCard(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        gradient: GradientColors2.listGradient,
                        child: Center(
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: FlutterLogo(size: 56.0),
                            ),
                            title: Text(
                              'Lorem ipsum dolor sit amet, ante metus, in etiam diam.',
                              style: TextStyle(fontSize: 16),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Soru Sayısı: $itemIndex',
                                textAlign: TextAlign.end,
                              ),
                            ),
                            trailing: Icon(Icons.more_vert),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Popüler Kişiler",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                    ),
                    CarouselSlider.builder(
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int itemIndex) =>
                          GradientCard(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        gradient: GradientColors2.listGradient,
                        child: Center(
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: FlutterLogo(size: 56.0),
                            ),
                            title: Text(
                              'Lorem ipsum dolor sit amet, ante metus, in etiam diam.',
                              style: TextStyle(fontSize: 16),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Soru Sayısı: $itemIndex',
                                textAlign: TextAlign.end,
                              ),
                            ),
                            trailing: Icon(Icons.more_vert),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
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
