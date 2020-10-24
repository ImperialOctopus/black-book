import 'dart:math';

import 'package:hive/hive.dart';

class PointAdapter extends TypeAdapter<Point<double>> {
  @override
  final int typeId = 1;

  @override
  Point<double> read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Point(
      fields[0] as double,
      fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Point<double> obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.x)
      ..writeByte(1)
      ..write(obj.y);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PointAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
