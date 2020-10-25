import 'package:hive/hive.dart';

import '../model/signature/signature.dart';
import '../model/signature/stroke.dart';
import 'model_service.dart';

class SignatureService implements ModelService<List<Stroke>> {
  final Box<Signature> box;

  SignatureService._(this.box);

  static Future<SignatureService> open(String name) async {
    return SignatureService._(await Hive.openBox<Signature>(name));
  }

  List<Stroke> get(String reference) {
    // Get data from storage.

    try {
      final list = box.get(reference, defaultValue: const Signature([]));
      return list.strokes;
      // Regardless of the error here we need to return an empty stroke list.
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return <Stroke>[];
    }
  }

  Future<void> put(String reference, List<Stroke> progress) async {
    await box.put(reference, Signature(progress));
  }
}
