import 'package:flutter/material.dart';

import 'item.dart';

class Category {
  final String name;
  final List<Item> items;
  const Category({@required this.name, @required this.items});
}
