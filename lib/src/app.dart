import 'package:flutter/material.dart';
import 'package:v_sos/src/pages/alarmsum_page.dart';
//import 'package:v_sos/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: CountAlarmPage(),
      ),
    );
  }
}
