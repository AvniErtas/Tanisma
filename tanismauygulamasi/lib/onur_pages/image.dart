import 'package:flutter/material.dart';

class AnaSayfaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: circleImages("testsec"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: circleImages("testsec"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: circleImages("testsec"),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget circleImages(String title) {
    return Container(
      height: 160.0,
      width: 160.0,
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage(
              'assets/$title.png'),
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
