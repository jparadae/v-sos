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
    print(menuProvider.menu);
    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {
    return [
      ListTile(title: Text('Hola1')),
      Divider(),
      ListTile(title: Text('Hola2')),
      Divider(),
    ];
  }
}
