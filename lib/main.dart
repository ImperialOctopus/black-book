import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'black_book_app.dart';
import 'extension/color_type_adapter.dart';
import 'extension/point_type_adapter.dart';
import 'model/signature/signature.dart';
import 'model/signature/stroke.dart';
import 'service/checklist_service.dart';
import 'service/signature_service.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<Stroke>(StrokeAdapter());
  Hive.registerAdapter<Point>(PointAdapter());
  Hive.registerAdapter<Color>(ColorAdapter());
  Hive.registerAdapter<Signature>(SignatureAdapter());

  final checklistService = await ChecklistService.open('black-book');
  final signatureService = await SignatureService.open('black-book-signature');

  runApp(BlackBookApp(
    checklistService: checklistService,
    signatureService: signatureService,
  ));
}
