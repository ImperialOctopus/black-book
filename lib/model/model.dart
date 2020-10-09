import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class Model {
  Box<List<int>> _box;

  Future<Model> init() async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();
    print(appDocumentDir);
    Hive.init(appDocumentDir.path);

    _box = await Hive.openBox<List<int>>('black-book');
    return this;
  }

  List<int> getProgress(String reference) {
    return List<int>.from(_box.get(reference, defaultValue: [0, 0, 0]));
  }

  void setProgress(String reference, List<int> progress) {
    _box.put(reference, progress);
  }
}
