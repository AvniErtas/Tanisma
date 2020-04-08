import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

import 'gradient.dart';

class Kesfet extends StatelessWidget {
  double height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
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
    );
  }

  Widget CardDesign() {
    return GradientCard(
      gradient: GradientColors.listGradient,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: FlutterLogo(size: 56.0),
              ),
              Text(
                "Bu bir test sorusudur.Soru bir iki uc???",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
