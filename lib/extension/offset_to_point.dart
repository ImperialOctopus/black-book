import 'dart:math';

import 'package:flutter/material.dart';

extension OffsetToPoint on Offset {
  Point<double> toPoint() => Point(dx, dy);
}
