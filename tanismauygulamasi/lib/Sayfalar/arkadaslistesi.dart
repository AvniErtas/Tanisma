// Flutter code sample for CheckboxListTile

// ![CheckboxListTile sample](https://flutter.github.io/assets-for-api-docs/assets/material/checkbox_list_tile.png)
//
// This widget shows a checkbox that, when checked, slows down all animations
// (including the animation of the checkbox itself getting checked!).
//
// This sample requires that you also import 'package:flutter/scheduler.dart',
// so that you can reference [timeDilation].

import 'package:flutter/material.dart';

import 'package:flutter/scheduler.dart' show timeDilation;

/// This Widget is the main application widget.
class ArkadasListesi extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<bool> liste = new List<bool>();
  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      liste.add(false);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        separatorBuilder: (contex, index) {
          return Divider(height: 20,thickness: 2,color: Colors.blue.shade100,);
        },
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return CheckboxListTile(
            title: const Text('Kullanıcı Adı Gelecek'),
            value: liste[index],
            onChanged: (bool value) {
              setState(() {
                timeDilation = value ? 2.0 : 1.0;
                liste[index] = value;
              });
            },
            secondary: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: FlutterLogo(size: 56.0),
            ),
          );
        },
      ),
    );
  }
}
