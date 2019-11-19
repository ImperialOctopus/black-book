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

  Item getItem(String id) {
    return _box.get(id, defaultValue: Item());
  }

  void setItem(String id, Item item) {
    _box.put(id, item);
  }
}
