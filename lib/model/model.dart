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

  List<int> getProgress(Item item) {
    return _box.get(item.reference, defaultValue: [0, 0, 0]);
  }

  void setProgress(Item item, List<int> progress) {
    _box.put(item.reference, progress);
  }
}
