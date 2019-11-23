import 'package:flutter/material.dart';

import 'model.dart';

class Item {
  final Model model;
  final String name;
  final String reference;

  Item({
    @required this.model,
    @required this.name,
    @required this.reference,
  });

  List<int> get progress {
    return model.getProgress(reference);
  }

  set progress(List<int> _progress) {
    model.setProgress(reference, _progress);
  }
}
