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
  List<double> animatedContainerSize = new List<double>(3);
  CarouselSlider slider;
  List<int> secilenSoruTipi = new List<int>(5);
  int soruNo = 0;
  @override
  void initState() {
    super.initState();
    animatedContainerSize[0] = 1;
    animatedContainerSize[1] = 1.5;
    animatedContainerSize[2] = 1;
    for(int i=0;i<secilenSoruTipi.length;i++){
      secilenSoruTipi[i]=1; //default olarak abcd seçiyoruz
    }
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "İstediğin Soru Tipini Seç",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: height * 0.10 * 1.5,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: height * 0.10 * animatedContainerSize[0],
                        width: height * 0.10 * animatedContainerSize[0],
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image:
                                new AssetImage('images/digericonlar/percent.png'),
                            fit: BoxFit.contain,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          animatedContainerSize[0] = 1.5;
                          animatedContainerSize[1] = 1;
                          animatedContainerSize[2] = 1;
                          secilenSoruTipi[soruNo] = 0;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: //circleImages("abcd", "png"),
                          AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: height * 0.10 * animatedContainerSize[1],
                        width: height * 0.10 * animatedContainerSize[1],
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage('images/digericonlar/abcd.png'),
                            fit: BoxFit.contain,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          animatedContainerSize[1] = 1.5;
                          animatedContainerSize[0] = 1;
                          animatedContainerSize[2] = 1;
                          secilenSoruTipi[soruNo] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          animatedContainerSize[2] = 1.5;
                          animatedContainerSize[0] = 1;
                          animatedContainerSize[1] = 1;
                          secilenSoruTipi[soruNo] = 2;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: height * 0.10 * animatedContainerSize[2],
                        width: height * 0.10 * animatedContainerSize[2],
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage(
                                'images/digericonlar/evethayirsorusec.png'),
                            fit: BoxFit.contain,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
      ),
    );
  }

  Widget Slider() {
    slider = CarouselSlider.builder(
      itemCount: 5,
      onPageChanged: (index) {
        setState(() {
           soruNo = index;
           switch(secilenSoruTipi[index]){
             case 0:
               animatedContainerSize[0]=1.5;
               animatedContainerSize[1]=1;
               animatedContainerSize[2]=1;
               break;
             case 1:
               animatedContainerSize[0]=1;
               animatedContainerSize[1]=1.5;
               animatedContainerSize[2]=1;
               break;
             case 2:
               animatedContainerSize[0]=1;
               animatedContainerSize[1]=1;
               animatedContainerSize[2]=1.5;
               break;
           }

          /*     animatedContainerSize[0] = 100.0;
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
            Visibility(
              visible: secilenSoruTipi[soruNo]==1 ? true : false,
              child: RaisedButton(
                onPressed: () {
                  _showDialog();
                },
                color: Colors.green,
                child: Text(
                  "Şıkları oluşturmak için tıkla",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
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

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Şıkları giriniz"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "Şık 1",
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
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "Şık 2",
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
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "Şık 3",
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
                TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "Şık 4",
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
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("İptal"),
              onPressed: () {
                Navigator.of(context).pop();
                //Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
            new FlatButton(
              child: new Text("Tamam"),
              onPressed: () {
                Navigator.of(context).pop();
                //Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
          ],
        );
      },
    );
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
