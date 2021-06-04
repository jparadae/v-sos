import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//Package para llamar
import 'package:url_launcher/url_launcher.dart';
import 'package:alertados/src/widgets/menu_burger.dart';

//Botonera inicial
//Podrias registervcin, regist alarmxhou
/*
 Recordatorio:
-necesitas registrar los numeros en el telefono primero 
-podria utilizar otra card en contactos*/

//Class AlertPage

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color principal App
      backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(
        title: Text('Activar Alertados'),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/alert1.png'),
              radius: 25.0,
            ),
          ),

          // Container(
          //   child: CircleAvatar(
          //     //Texto con estilo QL

          //     child: Text('AL',
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 20,
          //           fontFamily: 'RobotoMono',
          //         )),

          //     backgroundColor: Colors.redAccent,
          //   ),
          // ),
        ],
      ),
      drawer: MenuAlertas(),
      body: ListView(padding: EdgeInsets.all(30), children: <Widget>[
        _indicaciones(),
        Divider(),
        _botonAlertados(context),
        //  Divider(),
        // _butonsCommunity(context),

        // child: ElevatedButton(
        //     child: Text('Alertados'),
        //     //onPressed: () {},
        //     onPressed: () => __mostrarAlert(context),
        //     style: ElevatedButton.styleFrom(
        //         primary: Colors.red, shape: StadiumBorder())),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        backgroundColor: Colors.orange,
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
              color: Colors.orangeAccent,
            ),
            title: Text('Indicaciones'),
            subtitle: Text('Presione icono según emergencia'),
          ),
        ],
      ),
    );
  }
} //Fin indicadiones

//Botonera Alertados

Widget _botonAlertados(BuildContext context) {
  //final mobile_no = 133;
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      //Alarma Principal Comunidad
      Text('Alertados          '),
      ElevatedButton(
          onPressed: () => launch(('tel://99999xxxxx')),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            shape: StadiumBorder(),
          ),
          child: Icon(Icons.add_alert)),
      SizedBox(width: 14.0),
      Divider(),
      //Bombero
      Text('Bomberos        '),
      ElevatedButton(
          onPressed: () => launch(('tel://132')),
          style: ElevatedButton.styleFrom(
              primary: Colors.red, shape: StadiumBorder()),
          child: Icon(Icons.fire_extinguisher)),
      Divider(),
      Text('Violencia Mujer '),
      ElevatedButton(
          onPressed: () => launch(('tel://1485')),
          style: ElevatedButton.styleFrom(
              primary: Colors.pink, shape: StadiumBorder()),
          child: Icon(Icons.sports_kabaddi)),
      Divider(),
      //Carabineros
      Text('Carabineros     '),
      ElevatedButton(
          onPressed: () => launch(('tel://133')),
          style: ElevatedButton.styleFrom(
              primary: Colors.green, shape: StadiumBorder()),
          child: Icon(Icons.local_taxi)),

      Divider(),
      //PDI
      Text('PDI     '),
      ElevatedButton(
          onPressed: () => launch(('tel://2 2708 0000')),
          style: ElevatedButton.styleFrom(
              primary: Colors.blue, shape: StadiumBorder()),
          child: Icon(Icons.policy_outlined))
    ],
  );
}

//Fin
const _url = 'https://flutter.dev';
void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

Widget _butonsCommunity(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text('Violencia Mujer '),
      ElevatedButton(
          onPressed: () => __call1455(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.pink, shape: StadiumBorder()),
          child: Icon(Icons.sports_kabaddi)),
      SizedBox(width: 10.0),
      //Carabineros
      Text('Carabineros     '),
      ElevatedButton(
          onPressed: () => __call133(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.green, shape: StadiumBorder()),
          child: Icon(Icons.local_taxi)),

      //Violencia Mujer
    ],
  );
}
//Fin

// void __alertados(BuildContext context) {
//   showDialog(
//       context: context,
//       barrierDismissible: true,
//       builder: (context) {
//         return AlertDialog(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//           title: Text('Activando'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Text('Vecinos Alertados'),
//               FlutterLogo(size: 0.0)
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('OK'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       });
// }

// _callNumber() async {
//   const number = '08592119XXXX'; //set the number here
//   bool res = await FlutterPhoneDirectCaller.callNumber(number);
// }

//Call 133

void __call133(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Llamando a:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text('Carabineros 133'), FlutterLogo(size: 0.0)],
          ),
          actions: <Widget>[
            TextButton(child: Text('OK'), onPressed: () => launch(('tel://133'))

                ///},
                ),
          ],
        );
      });
} //fin133

//Call 132
void __call132(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Llamando a:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text('Bomberos 132'), FlutterLogo(size: 0.0)],
          ),
          actions: <Widget>[
            TextButton(
                child: Text('OK'), onPressed: () => launch(('tel://132'))),
          ],
        );
      });
} //fin132

//Call __call1455
void __call1455(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Llamando a:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Violencia Mujer 1455'),
              FlutterLogo(size: 0.0)
            ],
          ),
          actions: <Widget>[
            TextButton(
                child: Text('OK'), onPressed: () => launch(('tel://1455'))),
          ],
        );
      });
} //fin132
