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
                child: Text('AlertVeciApp',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              // color: Colors.orange,
              //style: const TextStyle(color: Colors.blue),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/men.png'), fit: BoxFit.cover))),

          //Menu1
          ListTile(
            leading: Icon(Icons.home, color: Colors.redAccent),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
          ),
          //Menu1
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.redAccent),
            title: Text('Galería'),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
            onTap: () {
              Navigator.pushNamed(context, '/cards');
            },
          ),
          //Menu1
          ListTile(
            leading: Icon(Icons.people, color: Colors.redAccent),
            title: Text('Vecinos'),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
            onTap: () {
              Navigator.pushNamed(context, '/contactos');
            },
          ),
          //Menu1
          ListTile(
              leading: Icon(Icons.settings, color: Colors.redAccent),
              title: Text('Configuración'),
              trailing:
                  Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
              onTap: () {
                Navigator.pushNamed(context, '/configuracion');
              })
          //EndMen1
        ],
      ),
    );
  }
}
