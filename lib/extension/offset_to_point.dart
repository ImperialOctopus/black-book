import 'dart:math';

import 'package:flutter/material.dart';

extension OffsetToPoint on Offset {
  Point toPoint() => Point(dx, dy);
}
