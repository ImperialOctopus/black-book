import 'package:hive/hive.dart';

@HiveType()
class Item {
  @HiveField(0)
  int a = 0;
  @HiveField(1)
  int b = 0;
  @HiveField(2)
  int c = 0;

  Item({this.a = 0, this.b = 0, this.c = 0});
}
