import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

Icon getIcon(String nameIcon) {
  final _icons = <String, IconData>{
    'add_alert': Icons.add_alert,
    'accesibility': Icons.accessibility,
    'folder_open': Icons.folder_open,
  };
  return Icon(_icons[nameIcon], color: Colors.orangeAccent);
}
