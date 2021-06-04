import 'package:flutter/material.dart';
import 'package:alertados/src/pages/galeria.dart';
import 'package:alertados/src/routes/routes.dart';

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
