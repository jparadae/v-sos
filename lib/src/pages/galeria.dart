import 'package:flutter/material.dart';
import 'package:alertados/src/widgets/menu_burger.dart';

//Esta sera la pagina temporal de los menus
class CardPage extends StatelessWidget {
  // This widget is the root of your application.
  final estiloText = new TextStyle(fontSize: 20);
  final opciones = ['Contac1', 'Contact2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color principal App
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('Demo AlerVeciApp'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: MenuAlertas(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _indicaciones(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
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
              color: Colors.red,
            ),
            title: Text('Demo AlertVeciApp'),
            subtitle: Text('Galeria de uso AlertVeciApp'),
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