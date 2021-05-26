import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> menu = [];

  _MenuProvider() {
    leerJson();
  }

  /*Se utilizara Future para  que se construya el widget despues de utilizar el async,
 utilizas async para esperar a  leer el archivo para cargar y mostrar data 
  */
  Future<List<dynamic>> leerJson() async {
    final respuesta = await rootBundle.loadString('data/menu_provider.json');
    Map dataMap = json.decode(respuesta);
    print(dataMap['rutas']);
    menu = dataMap['rutas'];

    return menu;
  }
}

final menuProvider = new _MenuProvider();
