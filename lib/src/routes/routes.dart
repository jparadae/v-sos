import 'package:flutter/material.dart';
import 'package:alertados/src/pages/alarmsum_page.dart';
import 'package:alertados/src/pages/galeria.dart';
import 'package:alertados/src/pages/config_alertados.dart';
import 'package:alertados/src/pages/contactos.dart';
import 'package:alertados/src/pages/home.dart';
import 'package:alertados/src/pages/list_alertados.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/alert': (BuildContext context) => AlertPage(),
    '/contactos': (BuildContext context) => Contactos(),
    '/lista_vecinos': (BuildContext context) => ListVecinosPage(), //CrearPage
    '/cards': (BuildContext context) => CardPage(),
    '/configuracion': (BuildContext context) => ConfigAlertadosPage(),
  };
}
