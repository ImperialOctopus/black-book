import 'package:black_book/model/item_progress.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ModelService {
  final Box _box;

  ModelService({@required Box box})
      : assert(box != null),
        _box = box;

  Future<List<int>> get(String reference) {
    if (boxClosed) {
      throw StateError('Box not open');
    }

    return _box.get(reference);
  }

  Future<void> put(String reference, List<int> progress) async {
    if (boxClosed) {
      throw StateError('Box not open');
    }

    await _box.put(reference, progress);
  }

  bool get boxClosed => !_box.isOpen;
}
