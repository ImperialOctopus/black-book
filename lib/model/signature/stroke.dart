import 'package:flutter/material.dart';

class Stroke {
  final List<Offset> locations;
  final double strokeWidth;
  final Color color;

  Stroke(
      {@required this.locations,
      @required this.strokeWidth,
      @required this.color});

  Stroke.fromMap(Map<String, dynamic> map)
      : locations = (map['locations'] as List<List<double>>)
            .map((e) => Offset(e[0], e[1]))
            .toList(),
        strokeWidth = map['strokeWidth'] as double,
        color = Color(map['color'] as int);

  Map<String, dynamic> get asMap => <String, dynamic>{
        'locations': locations.map((e) => [e.dx, e.dy]),
        'strokeWidth': strokeWidth,
        'color': color.value,
      };
}
