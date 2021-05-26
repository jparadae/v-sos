import 'package:flutter/material.dart';

//Esta sera la pagina temporal de los menus
class HomePageTemp extends StatelessWidget {
  // This widget is the root of your application.
  final estiloText = new TextStyle(fontSize: 20);
  final opciones = ['title1', 'title2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(children: _crearOpciones()),
    );
  }

  List<Widget> _crearOpciones() {
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
              title: Text(item + '!'),
              subtitle: Text('Subtitulo'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {}),
          Divider()
        ],
      );
    }).toList();
    return widgets;
  }
}
