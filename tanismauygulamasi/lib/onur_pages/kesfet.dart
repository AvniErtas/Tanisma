import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcard.dart';
import 'package:tanismauygulamasi/Sayfalar/gradientcolor.dart';
import 'package:flutter/widgets.dart';
import 'gradient.dart';

class Kesfet extends StatelessWidget {
  double height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(backgroundColor:Colors.blue,
      body: Column(
        children: <Widget>[
        Icon(MyFlutterApp.filter,size: 50,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GridView.builder(
                  shrinkWrap: true,
                  primary: true,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return CardDesign();
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget CardDesign() {
    return GradientCard(
      gradient: GradientColors2.listGradient,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipOval(
                child: FadeInImage(
                  image: NetworkImage("imageurl"),
                  fit: BoxFit.cover,
                  width: 80.0,
                  height: 80.0,
                  placeholder: AssetImage("images/digericonlar/hayir.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Bu bir test sorusudur.Soru bir iki uc???",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const _kFontPkg = '';

  static const IconData filter = const IconData(0xf0b0, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
