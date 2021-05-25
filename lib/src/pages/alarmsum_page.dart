import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          title: Text('Alerta2'),
          centerTitle: false,
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
        FloatingActionButton(child: Icon(Icons.add_circle), onPressed: null),
        SizedBox(width: 2.0),
        FloatingActionButton(child: Icon(Icons.policy), onPressed: null),
        FloatingActionButton(
            child: Icon(Icons.notification_important), onPressed: null),
        FloatingActionButton(child: Icon(Icons.fireplace), onPressed: null),
        FloatingActionButton(
            child: Icon(Icons.sentiment_dissatisfied_outlined),
            onPressed: null),
      ],
    );
  }
}
