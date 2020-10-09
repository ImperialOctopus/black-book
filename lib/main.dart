import 'package:black_book/black_book_app.dart';
import 'package:black_book/service/model_service.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  final box = await Hive.openBox('black-book');

  final modelService = ModelService(box: box);

  runApp(BlackBookApp(
    modelService: modelService,
  ));
}
