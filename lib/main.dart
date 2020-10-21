import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'black_book_app.dart';
import 'service/checklist_service.dart';
import 'service/signature_service.dart';

void main() async {
  await Hive.initFlutter();

  final checklistService = await ChecklistService.open('black-book');
  final signatureService = await SignatureService.open('black-book-signature');

  runApp(BlackBookApp(
    checklistService: checklistService,
    signatureService: signatureService,
  ));
}
