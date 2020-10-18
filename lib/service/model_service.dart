import 'package:hive/hive.dart';

class ModelService {
  final Box _box;

  ModelService({required Box box}) : _box = box;

  List<int> get(String reference) {
    if (boxClosed) {
      throw StateError('Box not open');
    }
    // Get data from storage.
    final dynamic list = _box.get(reference);

    // Check it's an int list with at least 3 elements.
    if (list is List<int> && list.length >= 3) {
      return list;
    } else {
      return <int>[0, 0, 0];
    }
  }

  Future<void> put(String reference, List<int> progress) async {
    if (boxClosed) {
      throw StateError('Box not open');
    }

    await _box.put(reference, progress);
  }

  bool get boxClosed => !_box.isOpen;
}
