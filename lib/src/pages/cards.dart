import 'package:flutter/material.dart';

//Esta sera la pagina temporal de los menus
class CardPage extends StatelessWidget {
  // This widget is the root of your application.
  final estiloText = new TextStyle(fontSize: 20);
  final opciones = ['Contac1', 'Contact2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
        ],
      ),
    );
  }

  //Card1
  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.orangeAccent,
            ),
          )
        ],
      ),
    );
  }
}
