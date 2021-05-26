import 'package:flutter/material.dart';

//Esta sera la pagina temporal de los menus
class Contactos extends StatelessWidget {
  // This widget is the root of your application.
  final estiloText = new TextStyle(fontSize: 20);
  final opciones = ['Contac1', 'Contact2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContactosS'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(children: _crearOpciones()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
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
