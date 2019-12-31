import 'package:flutter/material.dart';

final Map<String, IconData> _icons = {
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
};

Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.blue,);
}