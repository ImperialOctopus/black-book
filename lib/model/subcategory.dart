import 'package:flutter/material.dart';

import 'item.dart';

class Subcategory {
  final String name;
  final Icon? icon;
  final List<Item> items;
  const Subcategory({
    this.name = '',
    this.icon,
    required this.items,
  });
}
