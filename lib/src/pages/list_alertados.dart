import 'package:flutter/material.dart';

//Esta sera la pagina temporal de los menus
class ListVecinosPage extends StatelessWidget {
  // This widget is the root of your application.
  final estiloText = new TextStyle(fontSize: 20);
  final opciones = ['title1', 'title2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vecinos alertados'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _indicaciones(),
          SizedBox(height: 30.0),
          //_cardTipo2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      //ListView(children: _crearOpciones()),
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

  //Indicaciones
  Widget _indicaciones() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.error_outline,
              color: Colors.redAccent,
            ),
            title: Text('Lista de vecinos'),
            subtitle: Text('Vecinos conectados a mi AlertVeciApp'),
          ),
        ],
      ),
    );
  }
} //Fin indicadiones
