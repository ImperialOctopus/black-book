import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'item.dart';

class Model {
  Box _box;

  Future<Model> init() async {
    //final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    //Hive.init(appDocumentDir.path);

    _box = await Hive.openBox('black-book');
    return this;
  }

  List<int> getProgress(Item item) {
    return _box.get(item.reference, defaultValue: [0, 0, 0]);
  }

  void setProgress(Item item, List<int> progress) {
    _box.put(item.reference, progress);
  }
}
