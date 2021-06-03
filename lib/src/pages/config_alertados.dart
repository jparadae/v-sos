import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SingingCharacter { lafayette, jefferson }

/// This is the stateful widget that the main application instantiates.
class ConfigAlertadosPage extends StatefulWidget {
  @override
  State<ConfigAlertadosPage> createState() => _ConfigAlertadosState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ConfigAlertadosState extends State<ConfigAlertadosPage> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  bool _lights = false;
  String _nombre = 'Juan Perez';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración Alertados'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(padding: EdgeInsets.all(20), children: <Widget>[
        _indicaciones(),
        SizedBox(height: 30.0),
        _switchAlarma(),
        Divider(),
        _buttonOption(),
        Divider(),
        _datosAdmin(),
        Divider(),
        _saveInfoConfig(),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.pop(context);
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
      secondary: const Icon(Icons.lightbulb_outline),
    );
  }

  // Opciones RadioButtons
  Widget _buttonOption() {
    return Column(
      children: <Widget>[
        RadioListTile<SingingCharacter>(
          value: SingingCharacter.lafayette,
          groupValue: _character,
          title: const Text('Masculino'),
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          value: SingingCharacter.jefferson,
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

  //Save InfoCondifAlertados
  Widget _saveInfoConfig() {
    return ElevatedButton(
      onPressed: _incrementCounter,
      child: Text('Increment Counter'),
    );
  }

  //Fx asyncrona de guardado de datos
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }

  //Nombre Persona que guarda alarmas
  Widget _datosAdmin() {
    return Container(
      child: TextField(
          decoration: InputDecoration(
            labelText: 'Nombre',
            helperText: 'Nombre de la persona que configura la alarma',
          ),
          onChanged: (value) => {}),
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
              color: Colors.orangeAccent,
            ),
            title: Text('Indicaciones'),
            subtitle: Text('Modificar números default'),
          ),
        ],
      ),
    );
  }
} //Fin indicadiones
