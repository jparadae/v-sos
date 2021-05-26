import 'package:flutter/material.dart';
import 'package:v_sos/src/pages/contactos.dart';
import 'package:v_sos/src/pages/home.dart';
import 'package:v_sos/src/pages/home_pagetemp.dart';
import 'package:v_sos/src/routes/routes.dart';
//import 'package:v_sos/src/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Componentes APP',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('nombre ruta: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => Contactos());
      },
    );
  }
}
