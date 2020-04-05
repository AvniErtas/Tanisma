import 'package:flutter/material.dart';

import 'gradientcolor.dart';

class AnaSayfaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/anasayfaresimler/testisec.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
/* Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/anasayfaresimler/testisec.png"),
            fit: BoxFit.fill,
          ),
        ),
      ), */

// images/kategoriresimler/Aile.png
// height: MediaQuery.of(context).size.height * 0.25,
