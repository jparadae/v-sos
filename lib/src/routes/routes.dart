import 'package:flutter/material.dart';
import 'package:v_sos/src/pages/alarmsum_page.dart';
import 'package:v_sos/src/pages/cards.dart';
import 'package:v_sos/src/pages/config_alertados.dart';
import 'package:v_sos/src/pages/contactos.dart';
import 'package:v_sos/src/pages/home.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/alert': (BuildContext context) => AlertPage(),
    '/contactos': (BuildContext context) => Contactos(),
    '/lista_vecinos': (BuildContext context) => Contactos(), //CrearPage
    '/cards': (BuildContext context) => CardPage(),
    '/configuracion': (BuildContext context) => ConfigAlertadosPage(),
  };
}
