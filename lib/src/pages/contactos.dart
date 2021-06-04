import 'package:flutter/material.dart';
import 'package:alertados/src/widgets/menu_burger.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SingingCharacter { masculino, femenino }

//Esta sera la pagina temporal de los menus
class Contactos extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _ContactoState createState() => _ContactoState();
}

class _ContactoState extends State<Contactos> {
  String _nombre = '';
  String _direccion = '';
  String _telefono = '';
  SingingCharacter? _character = SingingCharacter.masculino;
  String _seleccionSexo = 'Femenino';
  List<String> _sexoList = ['Femenino', 'Masculino'];
  String _selectComuna = 'Santiago';
  List<String> _comunaList = [
    'Cerrillos',
    'Cerro Navia',
    'Conchalí',
    'El Bosque',
    'Estación Central',
    'Huechuraba',
    'Independencia',
    'La Cisterna',
    'La Florida',
    'La Granja',
    'La Pintana',
    'La Reina',
    'Las Condes',
    'Lo Barnechea',
    'Lo Espejo',
    'Lo Prado',
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
      //Color principal App
      backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(
        title: Text('Registro de comunidad'),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: MenuAlertas(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          // _indicaciones(),
          _nombreVecino(),
          // Divider(),
          // _generoOption(),
          Divider(),
          _direccionVecino(),
          Divider(),
          _comuna(),
          Divider(),
          _celVecino(),
          SizedBox(height: 40.0),
          _saveVecino(),

          //_createVecino(), Solo para ver que estoy recibiendo el param
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
    );
  }

  //Nombre Vecino
  Widget _nombreVecino() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          counter: Text('Letras ${_nombre.length}'),
          //hintText: 'Nombre vecin@',
          labelText: 'Nombre vecin@',
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

  // Opciones RadioButtons
  Widget _generoOption() {
    return Column(
      children: <Widget>[
        new Align(
          alignment: Alignment.centerLeft,
          child: new Text('Sexo: '),
        ),
        RadioListTile<SingingCharacter>(
          value: SingingCharacter.masculino,
          groupValue: _character,
          title: const Text('Masculino'),
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          value: SingingCharacter.femenino,
          groupValue: _character,
          title: const Text('Femernino'),
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }

  //Direccion
  Widget _direccionVecino() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          counter: Text('Letras ${_direccion.length}'),
          //hintText: 'Direccion vecin@',
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

//Celular
  Widget _celVecino() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          counter: Text('Letras ${_telefono.length}'),
          //hintText: 'Direccion vecin@',
          labelText: 'Número vecin@',
          helperText: 'Telefono (+569)',
          suffixIcon: Icon(Icons.phone),
          icon: Icon(Icons.phone_android)),
      onChanged: (valor) {
        setState(() {
          _telefono = valor;
          print(_telefono);
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
        new Align(
          alignment: Alignment.centerLeft,
          child: new Text('Comuna '),
        ),
        Icon(Icons.add_location),
        SizedBox(width: 30.0),
        //Text('Comuna: '),
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
  //Save InfoCondifAlertados
  Widget _saveVecino() {
    return Column(children: <Widget>[
      //Alarma Principal Comunidad
      // Text('guardar          '),
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
          ),
          child: Text('Guardar'))
    ]);
  }

  //Fx asyncrona de guardado de datos
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }

  //Esto solo sirve para ver si recibo algo y si lo guardo en el state
  Widget _createVecino() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }
}
