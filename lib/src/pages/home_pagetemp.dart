import 'package:flutter/material.dart';

//Esta sera la pagina temporal de los menus
class HomePageTemp extends StatelessWidget {
  // This widget is the root of your application.
  final estiloText = new TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Temp'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('PageTemp', style: estiloText),
          ],
        ),
      ),
    );
  }
}
