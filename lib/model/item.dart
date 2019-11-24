import 'package:flutter/material.dart';

import 'model.dart';

class Item {
  final String name;
  final bool essential;
  final String reference;

  const Item({
    @required this.name,
    this.essential = false,
    @required this.reference,
  });

  List<int> getProgress(Model _model) {
    return _model.getProgress(reference);
  }

  void setProgress(Model _model, List<int> _progress) {
    _model.setProgress(reference, _progress);
  }
}
