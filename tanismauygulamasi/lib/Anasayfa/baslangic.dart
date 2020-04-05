import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/mainwidget.dart';


class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  Color temarengi = Colors.cyan;
  Color yenibuton = Colors.orange;
  Brightness tematipi = Brightness.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: temarengi,
        accentColor: yenibuton,
        brightness: tematipi,
      ),
      home: MainWidget(),
    );
  }
}
