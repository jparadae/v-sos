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

  void _reset() {
    setState(() {
      _sumalarma = 0;
    });
  }
}
