import 'package:flutter/material.dart';

class MenuAlertas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            trailing:
                Icon(Icons.keyboard_arrow_right, color: Colors.orangeAccent),
          ),
          //Menu1
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.orangeAccent),
            title: Text('Galería Alertados'),
            trailing:
                Icon(Icons.keyboard_arrow_right, color: Colors.orangeAccent),
            onTap: () {
              Navigator.pushNamed(context, '/cards');
            },
          ),
          //Menu1
          ListTile(
            leading: Icon(Icons.people, color: Colors.orangeAccent),
            title: Text('Vecinos Alertados'),
            trailing:
                Icon(Icons.keyboard_arrow_right, color: Colors.orangeAccent),
            onTap: () {
              Navigator.pushNamed(context, '/contactos');
            },
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
}
