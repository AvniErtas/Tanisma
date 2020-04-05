import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:tanismauygulamasi/Anasayfa/bottomnavbar.dart';

class MainPage extends KFDrawerContent {
  MainPage({
    Key key,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BottomNavBar();
  }
}



