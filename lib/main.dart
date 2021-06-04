import 'package:flutter/material.dart';
import 'package:alertados/src/pages/alarmsum_page.dart';
import 'package:alertados/src/pages/cards.dart';
import 'package:alertados/src/pages/contactos.dart';
import 'package:alertados/src/pages/home.dart';
import 'package:alertados/src/pages/home_pagetemp.dart';
import 'package:alertados/src/routes/routes.dart';
//import 'package:alertados/src/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Vecinos Alertados',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('nombre ruta: ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) => CardPage());
      },
    );
  }
}
