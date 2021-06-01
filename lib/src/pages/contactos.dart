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

  @override
  final estiloText = new TextStyle(fontSize: 20);
  final opciones = ['Contac1', 'Contact2'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar nuevo vecino'),
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
          Divider(),
          _direccionVecino(),
          Divider(),
          _sexo(),
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
          hintText: 'Nombre vecino',
          labelText: 'Nombre Vecino',
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
          hintText: 'Direccion vecino',
          labelText: 'Direccion vecino',
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
        Icon(Icons.expand_more_outlined),
        SizedBox(width: 30.0),
        Text('Sexo: '),
        DropdownButton(
          value: _seleccionSexo,
          items: getOpcionesSexo(),
          style: const TextStyle(color: Colors.orange),
          underline: Container(
            height: 2,
            color: Colors.red,
          ),
          onChanged: (String? opt) {
            setState(() {
              _seleccionSexo = opt!;
              print(opt);
            });
          },
        )
      ],
    );
  }

  //Fin Sexo

  //Esto solo sirve para ver si recibo algo y si lo guardo en el state
  Widget _createVecino() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }
}

//Debes guardar al veci
Widget _saveVecino(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Guardar')),
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Volver')),
    ],
  );
}
