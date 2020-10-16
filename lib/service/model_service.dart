// ignore_for_file: avoid_catching_errors

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ModelService {
  final Box _box;

  ModelService({@required Box box})
      : assert(box != null),
        _box = box;

  List<int> get(String reference) {
    if (boxClosed) {
      throw StateError('Box not open');
    }

    try {
      final l =
          _box.get(reference, defaultValue: const <int>[0, 0, 0]) as List<int>;
    } on TypeError {
      return [0, 0, 0];
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
