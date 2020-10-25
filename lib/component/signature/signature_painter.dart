import 'dart:ui';

import 'package:flutter/material.dart';

import '../../model/signature/stroke.dart';

class SignaturePainter extends CustomPainter {
  //Keep track of the points tapped on the screen
  List<Stroke> strokes = <Stroke>[];

  SignaturePainter({@required this.strokes});

  //This is where we can draw on canvas.
  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(
        Rect.fromPoints(Offset.zero, Offset(size.width, size.height)));
    for (var stroke in strokes) {
      if (stroke.points.isNotEmpty) {
        final path = Path()
          ..moveTo(stroke.points.first.x, stroke.points.first.y);
        stroke.points.skip(1).forEach((point) => path.lineTo(point.x, point.y));
        canvas.drawPath(
            path,
            Paint()
              ..color = stroke.color
              ..strokeWidth = stroke.strokeWidth
              ..style = PaintingStyle.stroke);
      }
    }
  }

  //Called when CustomPainter is rebuilt.
  //Returning true because we want canvas to be rebuilt to reflect new changes.
  @override
  bool shouldRepaint(SignaturePainter oldDelegate) => true;
}
