import 'package:flutter/material.dart';
import 'package:v_sos/src/providers/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeComponents'),
      ),
      body: _lista(),
    );
  }

  //NewWidget
  Widget _lista() {
    //read json with FutureBuilder recibe el builder para dibujar en la pantalla
    return FutureBuilder(
      future: menuProvider.leerJson(),
      //initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['text']),
        leading: Icon(Icons.account_box, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
        onTap: () {
          print('accediste al menu bb');
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
