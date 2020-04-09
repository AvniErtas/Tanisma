import 'package:flutter/material.dart';

class BilgiDoldurmaEkrani extends StatefulWidget {
  @override
  _BilgiDoldurmaEkraniState createState() => _BilgiDoldurmaEkraniState();
}

class _BilgiDoldurmaEkraniState extends State<BilgiDoldurmaEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilgilerinizi Doldurunuz",
            style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
      body: Column(
         
      ),
    );
  }
}
