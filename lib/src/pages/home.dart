//Flutter package
import 'package:flutter/material.dart';
import 'package:v_sos/src/pages/config_alertados.dart';
import 'package:v_sos/src/providers/menu.dart';

//utils alertados
import 'package:v_sos/src/utils/icono_string.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Alertados'),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: _menu(context),
      body: _lista(),
    );
  }

  Drawer _menu(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text('Configuración Alertados',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              // color: Colors.orange,
              //style: const TextStyle(color: Colors.blue),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/menu2.jpg'),
                      fit: BoxFit.cover))),

          //Menu1
          ListTile(
            leading: Icon(Icons.home, color: Colors.orangeAccent),
            title: Text('Home Alertados'),
            onTap: () {},
            trailing:
                Icon(Icons.keyboard_arrow_right, color: Colors.orangeAccent),
          ),
          //Menu1
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.orangeAccent),
            title: Text('Galería Alertados'),
            trailing:
                Icon(Icons.keyboard_arrow_right, color: Colors.orangeAccent),
            onTap: () {},
          ),
          //Menu1
          ListTile(
            leading: Icon(Icons.people, color: Colors.orangeAccent),
            title: Text('Vecinos Alertados'),
            trailing:
                Icon(Icons.keyboard_arrow_right, color: Colors.orangeAccent),
            onTap: () {},
          ),
          //Menu1
          ListTile(
              leading: Icon(Icons.settings, color: Colors.orangeAccent),
              title: Text('Configuración'),
              trailing:
                  Icon(Icons.keyboard_arrow_right, color: Colors.orangeAccent),
              onTap: () {
                Navigator.pushNamed(context, '/configuracion');
              })
          //EndMen1
        ],
      ),
    );
  }

  //NewWidget
  Widget _lista() {
    //read json with FutureBuilder recibe el builder para dibujar en la pantalla
    return FutureBuilder(
      future: menuProvider.leerJson(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['text']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.orangeAccent),
        onTap: () {
          // Navigator.pushNamed(context, opt['ruta']);
          //final route = getApplicationRoutes();

          Navigator.pushNamed(context, '/${opt['ruta']}');
          print('accediste al menu bb');
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
