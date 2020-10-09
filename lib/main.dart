import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'black_book_app.dart';
import 'service/model_service.dart';

void main() async {
  await Hive.initFlutter();

  final box = await Hive.openBox<List<int>>('black-book');

  final modelService = ModelService(box: box);

  runApp(BlackBookApp(
    modelService: modelService,
  ));
}
