import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:url_launcher/url_launcher.dart';

//Botonera inicial
//Podrias registervcin, regist alarmxhou
class CountAlarmPage extends StatefulWidget {
  @override
  createState() => _CountAlarmPageState();
}

class _CountAlarmPageState extends State<CountAlarmPage> {
  final _estiloText = new TextStyle(fontSize: 20);
  int _sumalarma = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alertados'),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Alarmas conectadas', style: _estiloText),
              Text('$_sumalarma', style: _estiloText),
            ],
          ),
        ),
        floatingActionButton: _createButtons()
        //),
        );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.add_circle), onPressed: _sumarAlarmas),
        SizedBox(width: 2.0),
        FloatingActionButton(
          child: Icon(Icons.policy),
          onPressed: null,
          backgroundColor: Colors.green,
        ),
        SizedBox(width: 2.0),
        FloatingActionButton(
            child: Icon(Icons.notification_important), onPressed: null),
        SizedBox(width: 2.0),
        FloatingActionButton(
          child: Icon(Icons.fireplace),
          onPressed: null,
          backgroundColor: Colors.red,
        ),
        SizedBox(width: 2.0),
        FloatingActionButton(
          child: Icon(Icons.sentiment_dissatisfied_outlined),
          onPressed: null,
          backgroundColor: Colors.pinkAccent,
        ),
      ],
    );
  }

  void _sumarAlarmas() {
    setState(() {
      print('sumo alarmas');
      _sumalarma++;
    });
  }

  /* void _reset() {
    setState(() {
      _sumalarma = 0;
    });
  }*/
}

//Class AlertPage

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activar Alertados'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(padding: EdgeInsets.all(30), children: <Widget>[
        _cardTipo1(),
        Divider(),
        _botonAlertados(context),
        Divider(),
        _butonsCommunity(context),

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
          Navigator.pop(context);
        },
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
}
//Botonera Alertados

Widget _botonAlertados(BuildContext context) {
  //final mobile_no = 133;
  return Row(
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
      //Bombero
      Text('Bomeros        '),
      ElevatedButton(
          onPressed: () => _launchURL,
          style: ElevatedButton.styleFrom(
              primary: Colors.red, shape: StadiumBorder()),
          child: Icon(Icons.fire_extinguisher)),
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
      Text('Carabineros  '),
      ElevatedButton(
          onPressed: () => __call133(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.green, shape: StadiumBorder()),
          child: Icon(Icons.policy)),
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
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
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
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
} //fin132
