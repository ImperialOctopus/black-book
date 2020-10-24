import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'stroke.g.dart';

@HiveType(typeId: 0)
class Stroke {
  @HiveField(0)
  final List<Point<double>> points;
  @HiveField(1)
  final double strokeWidth;
  @HiveField(2)
  final Color color;

  const Stroke(
      {@required this.points,
      @required this.strokeWidth,
      @required this.color});
}
