import 'package:flutter/material.dart';
import 'package:v_sos/src/pages/alarmsum_page.dart';
import 'package:v_sos/src/pages/cards.dart';
import 'package:v_sos/src/pages/contactos.dart';
import 'package:v_sos/src/pages/home.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/alert': (BuildContext context) => AlertPage(),
    '/contactos': (BuildContext context) => Contactos(),
    '/cards': (BuildContext context) => CardPage(),
  };
}
