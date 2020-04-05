import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:tanismauygulamasi/Anasayfa/baslangic.dart';
import 'package:tanismauygulamasi/Kategoriler/Kategoriler.dart';
import 'package:tanismauygulamasi/Sayfalar/anasayfa.dart';
import 'package:tanismauygulamasi/Sayfalar/gonderitipi.dart';
import 'package:tanismauygulamasi/Sayfalar/profile.dart';
import 'package:tanismauygulamasi/Sayfalar/swiper.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.send, size: 30),
          Icon(Icons.message, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    child: Material(
                      shadowColor: Colors.transparent,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        //onPressed: widget.onMenuPressed,
                      ),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserProfilePage()));
                },
                child: Text("UserProfilePage"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kategoriler()));
                },
                child: Text("Kategoriler"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TravelNepalPage()));
                },
                child: Text("Swiper"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GonderiTipi()));
                },
                child: Text("GonderiSecimi"),
              ),
              RaisedButton(
                  color: Colors.teal,
                  child: Text(
                    "Uyari Ekrani Gif",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => NetworkGiffyDialog(
                              image: Image.network(
                                "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                                fit: BoxFit.cover,
                              ),
                              entryAnimation: EntryAnimation.TOP_LEFT,
                              title: Text(
                                'Testi Bitirmek İstiyor Musunuz? ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              /*   description: Text(
                                'This is a granny eating chocolate dialog box. This library helps you easily create fancy giffy dialog.',
                                textAlign: TextAlign.center,
                              ), */
                              buttonOkText: Text("Evet"),
                              buttonCancelText: Text("Hayır"),
                              buttonOkColor: Colors.green,
                              buttonCancelColor: Colors.red,
                              onOkButtonPressed: () {},
                            ));
                  }),
                  RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnaSayfaImage()));
                },
                child: Text("Anasayfa"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
