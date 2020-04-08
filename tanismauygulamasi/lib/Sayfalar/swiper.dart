import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcolor.dart';
import 'gradientcard.dart';

class TravelNepalPage extends StatelessWidget {
  static final String path = "lib/src/pages/travel/travel_nepal.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: swiperBolumu(),
          );
        }
      
        Widget swiperBolumu() {
          return Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: GradientCard(
                  gradient: GradientColors.anasayfaswiper,
                  shadowColor: GradientColors.anasayfaswiper.colors.last
                      .withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 15.0,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: 200,
                          child: Swiper.children(
                            autoplay: false,
                            loop: true,
                            pagination: SwiperPagination(
                              margin: EdgeInsets.only(
                                right: 25.0,
                              ),
                              builder: DotSwiperPaginationBuilder(
                                  color: Colors.grey),
                            ),
                            control: SwiperControl(
                              iconNext: Icons.arrow_forward_ios,color: Color(0xff110183),
                              iconPrevious: Icons.arrow_back_ios,
                            ),
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    "MERHABA BU BİR SORUDUR CEVAPLA ONUR",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    color: Color(0xff110183),
                                    child: Text(
                                      "ÇÖZ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(15.0),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    "MERHABA BU BİR SORUDUR CEVAPLA ONUR",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    color: Color(0xff110183),
                                    child: Text(
                                      "ÇÖZ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(15.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      );
        }
}
