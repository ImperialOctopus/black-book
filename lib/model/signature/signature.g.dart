// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SignatureAdapter extends TypeAdapter<Signature> {
  @override
  final int typeId = 3;

  @override
  Signature read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Signature(
      (fields[0] as List)?.cast<Stroke>(),
    );
  }

  @override
  void write(BinaryWriter writer, Signature obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.strokes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignatureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
