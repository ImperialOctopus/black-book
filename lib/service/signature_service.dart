import 'package:hive/hive.dart';

import '../model/signature/stroke.dart';
import 'model_service.dart';

class SignatureService implements ModelService<List<Stroke>> {
  final Box box;

  SignatureService._(this.box);

  static Future<SignatureService> open(String name) async {
    return SignatureService._(
        await Hive.openBox<List<Map<String, dynamic>>>(name));
  }

  List<Stroke> get(String reference) {
    // Get data from storage.
    final dynamic list = box.get(reference);

    try {
      return (list as List)
          .map((dynamic e) => Stroke.fromMap(e as Map<String, dynamic>))
          .toList();
      // Regardless of the error here we need to return an empty stroke list.
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return <Stroke>[];
    }
  }

  Future<void> put(String reference, List<Stroke> progress) async {
    await box.put(
        reference, progress.map<Map<String, dynamic>>((e) => e.asMap).toList());
  }
}
