import 'dart:ui';

import 'package:flutter/material.dart';

class SignaturePainter extends CustomPainter {
  Paint lineStyle;
  //Keep track of the points tapped on the screen
  List<Offset> points = <Offset>[];

  SignaturePainter({@required this.points, @required this.lineStyle});

  //This is where we can draw on canvas.
  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        //Drawing line when two consecutive points are available
        canvas.drawLine(points[i], points[i + 1], lineStyle);
      } else if (points[i] != null && points[i + 1] == null) {
        final offsetPoints = <Offset>[];
        offsetPoints.add(points[i]);
        offsetPoints.add(Offset(points[i].dx + 0.1, points[i].dy + 0.1));

        //Draw points when two points are not next to each other
        canvas.drawPoints(PointMode.points, offsetPoints, lineStyle);
      }
    }
  }

  //Called when CustomPainter is rebuilt.
  //Returning true because we want canvas to be rebuilt to reflect new changes.
  @override
  bool shouldRepaint(SignaturePainter oldDelegate) =>
      points != oldDelegate.points;
}
