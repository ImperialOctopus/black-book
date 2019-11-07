import 'dart:io';

import 'package:hive/hive.dart';

import 'item.dart';

class Model {
  Box _box;

  void init() async {
    var path = Directory.current.path;
    Hive.init(path);
    _box = await Hive.openBox('black-book');
  }

  Item getItem(int id) {
    return _box.get(id, defaultValue: Item());
  }

  void setItem(int id, Item item) {
    _box.put(id, item);
  }
}
