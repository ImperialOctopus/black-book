import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ColorAdapter extends TypeAdapter<Color> {
  @override
  final int typeId = 2;

  @override
  Color read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Color(
      fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Color obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
