import 'package:flutter/material.dart';

import 'subcategory.dart';

class Category {
  final String name;
  final Icon? icon;
  final List<Subcategory> subcategories;

  const Category({
    required this.name,
    this.icon,
    required this.subcategories,
  });
}
