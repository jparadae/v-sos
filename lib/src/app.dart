import 'package:flutter/material.dart';
//import 'package:alertados/src/pages/alarmsum_page.dart';
//import 'package:alertados/src/pages/home_pagetemp.dart';
import 'package:alertados/src/pages/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        //child: CountAlarmPage(),
        //child: HomePageTemp(),
        child: HomePage(),
      ),
    );
  }
}
