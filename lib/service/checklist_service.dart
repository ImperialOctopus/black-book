import 'package:hive/hive.dart';

import 'model_service.dart';

class ChecklistService implements ModelService<List<int>> {
  final Box box;

  ChecklistService._(this.box);

  static Future<ChecklistService> open(String name) async {
    return ChecklistService._(await Hive.openBox<List<int>>(name));
  }

  List<int> get(String reference) {
    // Get data from storage.
    final dynamic list = box.get(reference);

    // Check it's an int list with at least 3 elements.
    if (list is List<int> && list.length >= 3) {
      return list;
    } else {
      return <int>[0, 0, 0];
    }
  }

  Future<void> put(String reference, List<int> progress) async {
    await box.put(reference, progress);
  }
}
