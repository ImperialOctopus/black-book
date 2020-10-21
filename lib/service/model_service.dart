import 'package:hive/hive.dart';

abstract class ModelService<T> {
  final Box box;

  ModelService(this.box);

  T get(String reference);

  Future<void> put(String reference, T progress);
}
