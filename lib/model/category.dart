import 'package:black_book/model/subcategory.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final List<Subcategory> subcategories;
  const Category({
    @required this.name,
    @required this.subcategories,
  });
}
