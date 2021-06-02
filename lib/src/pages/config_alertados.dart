import 'package:flutter/material.dart';

//Esta es la configuracion de los numeros guardados en el telefono por default

class ConfigAlertadosPage extends StatefulWidget {
  static final String routeName = 'configuracion';
  // This widget is the root of your application.
  @override
  _ConfigAlertadosState createState() => _ConfigAlertadosState();
}

class _ConfigAlertadosState extends State<ConfigAlertadosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración numeros'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _indicaciones(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
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
              color: Colors.orangeAccent,
            ),
            title: Text('Indicaciones'),
            subtitle: Text('botonera alertados'),
          ),
        ],
      ),
    );
  }
} //Fin indicadiones

//Card2

Widget _cardTipo2() {
  final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
    children: <Widget>[
      FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 100),
          height: 300.0,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://http2.mlstatic.com/D_NQ_NP_703530-MLC31211128447_062019-O.webp')),
      // Image(
      //   image: NetworkImage(
      //       'https://www.creattiva.cl/blog-hosting/wp-content/uploads/2020/07/beneficios-landing-page-1024x675.jpg'),
      // ),
      Container(padding: EdgeInsets.all(10.0), child: Text('Alertados')),
    ],
  ));

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white12,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ]), //),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );
}