import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'stroke.dart';

class StrokeAdapter extends TypeAdapter<Stroke> {
  @override
  final int typeId = 0;

  @override
  Stroke read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stroke(
      points: (fields[0] as List)?.cast<Point<double>>(),
      strokeWidth: fields[1] as double,
      color: fields[2] as Color,
    );
  }

  @override
  void write(BinaryWriter writer, Stroke obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.points)
      ..writeByte(1)
      ..write(obj.strokeWidth)
      ..writeByte(2)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StrokeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
