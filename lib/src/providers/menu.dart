import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> menu = [];

  _MenuProvider() {
    leerJson();
  }

  leerJson() {
    rootBundle.loadString('data/data.json').then((data) {
      print(data);
    });
  }
}

final menuProvider = new _MenuProvider();
