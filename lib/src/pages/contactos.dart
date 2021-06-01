import 'package:flutter/material.dart';

//Esta sera la pagina temporal de los menus
class Contactos extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _ContactoState createState() => _ContactoState();
}

class _ContactoState extends State<Contactos> {
  String _nombre = '';
  String _direccion = '';
  String _seleccionSexo = 'Femenino';
  List<String> _sexoList = ['Femenino', 'Masculino'];
  String _selectComuna = 'Santiago';
  List<String> _comunaList = [
    'Cerrillos',
    'Cerro Navia',
    'Conchalí',
    'El Bosque',
    ' Estación Central',
    'Huechuraba',
    'Independencia',
    'La Cisterna',
    ' La Florida',
    ' La Granja',
    'La Pintana',
    'La Reina',
    'Las Condes',
    'Lo Barnechea',
    ' Lo Espejo',
    ' Lo Prado',
    'Macul',
    'Maipú',
    'Ñuñoa',
    'Pedro Aguirre Cerda',
    'Peñalolén',
    'Providencia',
    'Pudahuel',
    'Quilicura',
    'Quinta Normal',
    'Recoleta',
    'Renca',
    'San Joaquín',
    'San Miguel',
    'San Ramón',
    'Santiago',
    'Vitacura'
  ];

  @override
  final estiloText = new TextStyle(fontSize: 20);
  final opciones = ['Contac1', 'Contact2'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de comunidad'),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent-scl2-1.xx.fbcdn.net/v/t31.18172-8/17192646_10212081323814309_3581805654920506777_o.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=yvfVaC1BEBQAX9WiXLO&_nc_ht=scontent-scl2-1.xx&oh=14db7d27110cf2333d1e46c95f0a9694&oe=60DC08B7'),
              radius: 25.0,
            ),
          ),
          Container(
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.yellowAccent,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _nombreVecino(),
          SizedBox(height: 30.0),
          // Divider(),
          _sexo(),
          Divider(),
          _direccionVecino(),
          Divider(),
          _comuna(),
          Divider(),
          _saveVecino(context),

          //_createVecino(), Solo para ver que estoy recibiendo el param
        ],
        // ),

        //  Center(
        //   child: FadeInImage(
        //     image: NetworkImage(
        //         'https://scontent-scl2-1.xx.fbcdn.net/v/t31.18172-8/17192646_10212081323814309_3581805654920506777_o.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=yvfVaC1BEBQAX9WiXLO&_nc_ht=scontent-scl2-1.xx&oh=14db7d27110cf2333d1e46c95f0a9694&oe=60DC08B7'),
        //     placeholder: AssetImage('assets/jar-loading.gif'),
        //     fadeInDuration: Duration(milliseconds: 200),
        //   ),
        // ),

        // //body: ListView(children: _crearOpciones()),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add_location),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
      ),
    );
  }

  //Nombre Vecino
  Widget _nombreVecino() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre vecin@',
          labelText: 'Nombre Vecin@',
          helperText: 'Ingresar nombre completo',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          print(_nombre);
        });
      },
    );
  }

  //Apellido Vecino
  Widget _direccionVecino() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          counter: Text('Letras ${_direccion.length}'),
          hintText: 'Direccion vecin@',
          labelText: 'Direccion vecin@',
          helperText: 'Ingresar Direccion completa',
          suffixIcon: Icon(Icons.home),
          icon: Icon(Icons.home_filled)),
      onChanged: (valor) {
        setState(() {
          _direccion = valor;
          print(_direccion);
        });
      },
    );
  }

  //Sexo Vecino con Lista Dynamica
  List<DropdownMenuItem<String>> getOpcionesSexo() {
    List<DropdownMenuItem<String>> lista = [];

    _sexoList.forEach((sexo) {
      lista.add(DropdownMenuItem(
        child: Text(sexo),
        value: sexo,
      ));
    });
    return lista;
  }

  Widget _sexo() {
    return Row(
      children: <Widget>[
        Icon(Icons.wc),
        SizedBox(width: 30.0),
        Text('Sexo: '),
        DropdownButton(
          value: _seleccionSexo,
          items: getOpcionesSexo(),
          style: const TextStyle(color: Colors.blue),
          underline: Container(
            height: 2,
            color: Colors.blue,
          ),
          onChanged: (String? opt) {
            setState(() {
              _seleccionSexo = opt!;
              print(opt);
            });
          },
        ),
        Icon(Icons.expand_more_outlined),
      ],
    );
  }

  //Fin Sexo

  //Comunas con Lista Dynamica
  List<DropdownMenuItem<String>> getComuna() {
    List<DropdownMenuItem<String>> lista = [];

    _comunaList.forEach((comuna) {
      lista.add(DropdownMenuItem(
        child: Text(comuna),
        value: comuna,
      ));
    });
    return lista;
  }

  Widget _comuna() {
    return Row(
      children: <Widget>[
        Icon(Icons.add_location),
        SizedBox(width: 30.0),
        Text('Comuna: '),
        DropdownButton(
          value: _selectComuna,
          items: getComuna(),
          style: const TextStyle(color: Colors.blue),
          underline: Container(
            height: 2,
            color: Colors.blue,
          ),
          onChanged: (String? opt) {
            setState(() {
              _selectComuna = opt!;
              print(opt);
            });
          },
        ),
        Icon(Icons.expand_more_outlined),
      ],
    );
  }

  //Fin Comunas

  //Metodo mensaje has guardado bn
  void __mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Guardando'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Al vecin@ $_nombre '),
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

  //Debes guardar al veci
  Widget _saveVecino(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
            onPressed: () => __mostrarAlert(context),
            // onPressed: () {
            //   Navigator.pop(context);
            // },
            child: Text('Guardar')),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Volver')),
      ],
    );
  }

  //Esto solo sirve para ver si recibo algo y si lo guardo en el state
  Widget _createVecino() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }
}
