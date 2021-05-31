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
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  //Card1
  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.orangeAccent,
            ),
            title: Text('Titulo Tarjeta'),
            subtitle: Text('Descripiones'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }
}

//Card2

Widget _cardTipo2() {
  final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
    children: <Widget>[
      FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://www.creattiva.cl/blog-hosting/wp-content/uploads/2020/07/beneficios-landing-page-1024x675.jpg')),
      // Image(
      //   image: NetworkImage(
      //       'https://www.creattiva.cl/blog-hosting/wp-content/uploads/2020/07/beneficios-landing-page-1024x675.jpg'),
      // ),
      Container(padding: EdgeInsets.all(10.0), child: Text('Imagen House')),
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
