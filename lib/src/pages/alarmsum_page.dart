import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      body: ListView(padding: EdgeInsets.all(20), children: <Widget>[
        _botonAlertados(context),

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

  //Botonera Alertados

  Widget _botonAlertados(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //Alarma Principal Comunidad
        ElevatedButton(
            onPressed: () => __mostrarAlert(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.orange, shape: StadiumBorder()),
            child: Text('Robo')),
        SizedBox(width: 4.0),
        //Bombero
        ElevatedButton(
            onPressed: () => __mostrarAlert(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.red, shape: StadiumBorder()),
            child: Text('Fuego')),

        //Carabineros
        ElevatedButton(
            onPressed: () => __mostrarAlert(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.green, shape: StadiumBorder()),
            child: Text('Carabinero')),
        //Violencia Mujer

        ElevatedButton(
            onPressed: () => __mostrarAlert(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.pink, shape: StadiumBorder()),
            child: Text('Violencia')),
      ],
    );
  }
  //Fin

  void __mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Contenido card'),
                FlutterLogo(size: 0.0)
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
