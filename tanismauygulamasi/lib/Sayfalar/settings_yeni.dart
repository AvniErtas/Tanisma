
import 'package:flutter/cupertino.dart';
/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:tanismauygulamasi/Sayfalar/appbar.dart';

class SettingsOnePage extends StatefulWidget {
  static final String path = "lib/src/pages/settings/settings1.dart";

  @override
  _SettingsOnePageState createState() => _SettingsOnePageState();
}

class _SettingsOnePageState extends State<SettingsOnePage> {
  bool _dark;
    List<String> diller = ["Türkçe","English","Rusça"];
  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  GlobalKey<ScaffoldState> key = GlobalKey(debugLabel: "scaffoldKey");
  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home: 
               Scaffold(
                 appBar: appBarTasarim(""),
          backgroundColor: _dark ? null : Colors.grey.shade200,
          
          // appBar: AppBar(
          //   elevation: 0,
          //   brightness: _getBrightness(),
          //   iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          //   backgroundColor: Colors.transparent,
          //   title: Text(
          //     'Ayarlar',
          //     style: TextStyle(color: _dark ? Colors.white : Colors.black),
          //   ),
          //   actions: <Widget>[
          //     IconButton(
          //       icon: Icon(FontAwesomeIcons.moon),
          //       onPressed: () {
          //         setState(() {
          //           _dark = !_dark;
          //         });
          //       },
          //     )
          //   ],
          // ),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      elevation: 4.0,
                      margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.lock_outline,
                              color: Colors.purple,
                            ),
                            title: Text("Şifre Değiştir"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              _showDialog("Yeni Şifrenizi Giriniz");
                              //open change password
                            },
                          ),
                          _buildDivider(),
                          ListTile(
                            leading: Icon(
                              Icons.language,
                              color: Colors.purple,
                            ),
                            title: Text("Dili Değiştir"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              showModalBottomSheet(
                              
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 200.0,
                                        child: CupertinoPicker(
                                            itemExtent: 32.0,
                                            onSelectedItemChanged: (int index) {
                                              setState(() {});
                                            },
                                            children: new List<Widget>.generate(diller.length,
                                                (int index) {
                                              return new Center(
                                                child: new Text(diller[index]),
                                              );
                                            })),
                                      );
                                    });
                                 key.currentState.showBottomSheet((context)=> Container(
                                height: 100,
                                child: CupertinoPicker(
                                onSelectedItemChanged: (val) {
                                  Navigator.pop(context);
                                },
                                itemExtent: 35,
                                children: <Widget>[
                                  Text("Türkçe"),
                                  Text("English"),
                                ],
                              ),
                              ),);

                              //open change language
                            },
                          ),
                          _buildDivider(),
                          /* ListTile(
                            leading: Icon(
                              Icons.location_on,
                              color: Colors.purple,
                            ),
                            title: Text("Change Location"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                              //open change location
                            },
                          ), */
                        
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      "Bildirim Ayarları",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                    SwitchListTile(
                      activeColor: Color(0xff5287f7),
                      contentPadding: const EdgeInsets.all(0),
                      value: false,
                      title: Text("Gelen Bildirimler"),
                      onChanged: null/* (val) {} */
                    ),
                    /* SwitchListTile(
                      activeColor: Colors.purple,
                      contentPadding: const EdgeInsets.all(0),
                      value: true,
                      title: Text("Received Offer Notification"),
                      onChanged: (val) {},
                    ), */
                    SwitchListTile(
                      activeColor: Color(0xff5287f7),
                      contentPadding: const EdgeInsets.all(0),
                      value: true,
                      title: Text("Güncelleme Bildirimleri"),
                      onChanged: null,
                    ),
                    const SizedBox(height: 60.0),
                  ],
                ),
              ),
              Positioned(
                bottom: -20,
                left: -20,
                child: Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff5287f7),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: 00,
                left: 00,
                child: IconButton(
                  icon: Icon(
                    Icons.power_settings_new,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    debugPrint("girdi");
                  _showDialogExit();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(String title) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(title),
          content: TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
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
   void _showDialogExit() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Çıkmak istediğinize emin misiniz ?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Hayır"),
              onPressed: () {
                Navigator.of(context).pop();
                //Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
             new FlatButton(
              child: new Text("Evet"),
              onPressed: () {
               // _signOut();
              },
            ),
          ],
        );
      },
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
  /* _signOut() async{
     final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    await _firebaseAuth.signOut().then((_){

    Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => Main()),
  (Route<dynamic> route) => false,
);
    });
  }*/
}
