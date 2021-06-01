import 'package:flutter/widgets.dart';

//Import Flutter packages
import 'package:flutter/material.dart';

//Mapeo de Icons alertados
Icon getIcon(String nameIcon) {
  final _icons = <String, IconData>{
    'add_alert': Icons.add_alert,
    'accesibility': Icons.accessibility,
    'folder_open': Icons.folder_open,
    'list': Icons.list,
  };
  return Icon(_icons[nameIcon], color: Colors.orangeAccent);
}
