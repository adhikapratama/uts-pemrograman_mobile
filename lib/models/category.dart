import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final IconData icon;

  Category({required this.id, required this.name, required this.icon});
}

final categories = <Category>[
  Category(id: 'keyboards', name: 'Keyboards', icon: Icons.keyboard),
  Category(id: 'mice', name: 'Mice', icon: Icons.mouse),
  Category(id: 'monitors', name: 'Monitors', icon: Icons.desktop_windows),
  Category(id: 'audio', name: 'Audio', icon: Icons.headphones),
  Category(id: 'accessories', name: 'Accessories', icon: Icons.devices_other),
];
