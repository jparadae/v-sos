import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:alertados/src/widgets/menu_burger.dart';

enum SingingCharacter { masculino, femenino }

/// This is the stateful widget that the main application instantiates.
class ConfigAlertadosPage extends StatefulWidget {
  static final String routName = 'configuracion Numero Alarma';
  @override
  State<ConfigAlertadosPage> createState() => _ConfigAlertadosState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ConfigAlertadosState extends State<ConfigAlertadosPage> {
  SingingCharacter? _character = SingingCharacter.masculino;
  bool _lights = false;
  String _nombre = 'Juan Perez';
  String _telefono = '';
  final _nombreController = TextEditingController();

  void _printLatestValue() {
    // _nombre;
    setState(() {
      _nombre;
      print('Second text field: ${_nombreController.text}');
    });
  }

  @override
  void initState() {
    _nombreController.addListener(_printLatestValue);
    super.initState();
    // _nombreController = new TextEditingController(text: _nombre);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nombreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color principal App
      backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(
        title: Text('Configuración AlertVeciApp'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: MenuAlertas(),
      body: ListView(padding: EdgeInsets.all(20), children: <Widget>[
        _indicaciones(),

        // Divider(),
        // _buttonOption(),
        Divider(),
        _datosAdmin(),
        Divider(),
        _alertVeciApp(),

        SizedBox(height: 30.0),
        _switchAlarma(),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
      ),
    );
  }

  //SwitchAlarma
  Widget _switchAlarma() {
    return SwitchListTile(
      title: const Text('Guardar Cambios'),
      value: _lights,
      onChanged: (bool value) {
        setState(() {
          _lights = value;
        });
      },
      secondary: const Icon(Icons.save),
    );
  }

  // Opciones RadioButtons
  Widget _buttonOption() {
    return Column(
      children: <Widget>[
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

  //Fx asyncrona de guardado de datos
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }

  //Nombre Administrador de Alarma
  Widget _datosAdmin() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          counter: Text('Letras ${_nombre.length}'),
          labelText: 'Admin AlertVeciApp',
          helperText: 'Nombre administrador AlertVeciApp',
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

  //Alarma
  Widget _alertVeciApp() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          counter: Text('Letras ${_telefono.length}'),
          //hintText: 'Direccion vecin@',
          labelText: 'Registrar AlertVeciApp',
          helperText: '(+569) nueva alarma',
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

  //Indicaciones
  Widget _indicaciones() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.error_outline,
              color: Colors.redAccent,
            ),
            title: Text('Indicaciones'),
            subtitle: Text('Configura tú AlertVeciApp'),
          ),
        ],
      ),
    );
  }
} //Fin indicadiones
