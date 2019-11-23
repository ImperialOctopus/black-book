import 'package:flutter/material.dart';

import 'subcategory.dart';

class Category {
  final String name;
  final List<Subcategory> subcategories;
  const Category({
    @required this.name,
    @required this.subcategories,
  });
}
